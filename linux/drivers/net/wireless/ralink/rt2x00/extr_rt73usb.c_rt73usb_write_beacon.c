
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct txentry_desc {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_2__* skb; int entry_idx; TYPE_1__* queue; } ;
struct TYPE_6__ {unsigned int len; int data; } ;
struct TYPE_5__ {struct rt2x00_dev* rt2x00dev; } ;


 int DUMP_FRAME_BEACON ;
 unsigned int HW_BEACON_OFFSET (int ) ;
 int TXD_DESC_SIZE ;
 int TXRX_CSR10 ;
 int TXRX_CSR9 ;
 int TXRX_CSR9_BEACON_GEN ;
 int dev_kfree_skb (TYPE_2__*) ;
 int memset (int ,int ,int ) ;
 unsigned int roundup (unsigned int,int) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00debug_dump_frame (struct rt2x00_dev*,int ,struct queue_entry*) ;
 int rt2x00usb_register_multiwrite (struct rt2x00_dev*,unsigned int,int ,unsigned int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int) ;
 int rt73usb_write_tx_desc (struct queue_entry*,struct txentry_desc*) ;
 scalar_t__ skb_pad (TYPE_2__*,unsigned int) ;
 int skb_push (TYPE_2__*,int ) ;

__attribute__((used)) static void rt73usb_write_beacon(struct queue_entry *entry,
     struct txentry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 unsigned int beacon_base;
 unsigned int padding_len;
 u32 orig_reg, reg;





 reg = rt2x00usb_register_read(rt2x00dev, TXRX_CSR9);
 orig_reg = reg;
 rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_GEN, 0);
 rt2x00usb_register_write(rt2x00dev, TXRX_CSR9, reg);




 skb_push(entry->skb, TXD_DESC_SIZE);
 memset(entry->skb->data, 0, TXD_DESC_SIZE);




 rt73usb_write_tx_desc(entry, txdesc);




 rt2x00debug_dump_frame(rt2x00dev, DUMP_FRAME_BEACON, entry);




 padding_len = roundup(entry->skb->len, 4) - entry->skb->len;
 if (padding_len && skb_pad(entry->skb, padding_len)) {
  rt2x00_err(rt2x00dev, "Failure padding beacon, aborting\n");

  entry->skb = ((void*)0);
  rt2x00usb_register_write(rt2x00dev, TXRX_CSR9, orig_reg);
  return;
 }

 beacon_base = HW_BEACON_OFFSET(entry->entry_idx);
 rt2x00usb_register_multiwrite(rt2x00dev, beacon_base, entry->skb->data,
          entry->skb->len + padding_len);







 rt2x00usb_register_write(rt2x00dev, TXRX_CSR10, 0x00001008);

 rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_GEN, 1);
 rt2x00usb_register_write(rt2x00dev, TXRX_CSR9, reg);




 dev_kfree_skb(entry->skb);
 entry->skb = ((void*)0);
}
