
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct usb_device {int dummy; } ;
struct txentry_desc {int dummy; } ;
struct rt2x00_dev {TYPE_3__* ops; int dev; } ;
struct queue_entry_priv_usb_bcn {int guardian_urb; scalar_t__ guardian_data; int urb; } ;
struct queue_entry {TYPE_4__* skb; TYPE_1__* queue; struct queue_entry_priv_usb_bcn* priv_data; } ;
struct TYPE_8__ {scalar_t__* data; } ;
struct TYPE_7__ {TYPE_2__* lib; } ;
struct TYPE_6__ {int (* get_tx_data_len ) (struct queue_entry*) ;} ;
struct TYPE_5__ {int usb_endpoint; struct rt2x00_dev* rt2x00dev; } ;


 int DUMP_FRAME_BEACON ;
 int GFP_ATOMIC ;
 int TXD_DESC_SIZE ;
 int TXRX_CSR19 ;
 int TXRX_CSR19_BEACON_GEN ;
 int TXRX_CSR19_TBCN ;
 int TXRX_CSR19_TSF_COUNT ;
 int memset (scalar_t__*,int ,int ) ;
 int rt2500usb_beacondone ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2500usb_write_tx_desc (struct queue_entry*,struct txentry_desc*) ;
 int rt2x00_set_field16 (int *,int ,int) ;
 int rt2x00debug_dump_frame (struct rt2x00_dev*,int ,struct queue_entry*) ;
 int skb_push (TYPE_4__*,int ) ;
 int stub1 (struct queue_entry*) ;
 struct usb_device* to_usb_device_intf (int ) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int,scalar_t__*,int,int ,struct queue_entry*) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void rt2500usb_write_beacon(struct queue_entry *entry,
       struct txentry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct usb_device *usb_dev = to_usb_device_intf(rt2x00dev->dev);
 struct queue_entry_priv_usb_bcn *bcn_priv = entry->priv_data;
 int pipe = usb_sndbulkpipe(usb_dev, entry->queue->usb_endpoint);
 int length;
 u16 reg, reg0;





 reg = rt2500usb_register_read(rt2x00dev, TXRX_CSR19);
 rt2x00_set_field16(&reg, TXRX_CSR19_BEACON_GEN, 0);
 rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg);




 skb_push(entry->skb, TXD_DESC_SIZE);
 memset(entry->skb->data, 0, TXD_DESC_SIZE);




 rt2500usb_write_tx_desc(entry, txdesc);




 rt2x00debug_dump_frame(rt2x00dev, DUMP_FRAME_BEACON, entry);






 length = rt2x00dev->ops->lib->get_tx_data_len(entry);

 usb_fill_bulk_urb(bcn_priv->urb, usb_dev, pipe,
     entry->skb->data, length, rt2500usb_beacondone,
     entry);






 bcn_priv->guardian_data = 0;
 usb_fill_bulk_urb(bcn_priv->guardian_urb, usb_dev, pipe,
     &bcn_priv->guardian_data, 1, rt2500usb_beacondone,
     entry);




 usb_submit_urb(bcn_priv->guardian_urb, GFP_ATOMIC);




 rt2x00_set_field16(&reg, TXRX_CSR19_TSF_COUNT, 1);
 rt2x00_set_field16(&reg, TXRX_CSR19_TBCN, 1);
 reg0 = reg;
 rt2x00_set_field16(&reg, TXRX_CSR19_BEACON_GEN, 1);







 rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg);
 rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg0);
 rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg);
 rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg0);
 rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg);
}
