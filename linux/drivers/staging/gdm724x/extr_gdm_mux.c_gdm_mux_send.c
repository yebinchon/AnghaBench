
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_device {int dummy; } ;
struct mux_tx {int len; void (* callback ) (void*) ;int urb; scalar_t__ buf; void* cb_data; } ;
struct mux_pkt_header {int packet_type; void* payload_size; void* seq_num; void* start_flag; } ;
struct mux_dev {scalar_t__ usb_state; int write_lock; int intf; struct usb_device* usbdev; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MUX_HEADER_SIZE ;
 scalar_t__ PM_SUSPEND ;
 int START_FLAG ;
 int __cpu_to_le16 (int ) ;
 void* __cpu_to_le32 (int) ;
 struct mux_tx* alloc_mux_tx (int) ;
 int gdm_mux_send_complete ;
 int memcpy (scalar_t__,void*,int) ;
 int memset (scalar_t__,int ,int) ;
 int * packet_type ;
 int pr_err (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,scalar_t__,int,int ,struct mux_tx*) ;
 int usb_mark_last_busy (struct usb_device*) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int gdm_mux_send(void *priv_dev, void *data, int len, int tty_index,
   void (*cb)(void *data), void *cb_data)
{
 struct mux_dev *mux_dev = priv_dev;
 struct usb_device *usbdev = mux_dev->usbdev;
 struct mux_pkt_header *mux_header;
 struct mux_tx *t = ((void*)0);
 static u32 seq_num = 1;
 int total_len;
 int ret;
 unsigned long flags;

 if (mux_dev->usb_state == PM_SUSPEND) {
  ret = usb_autopm_get_interface(mux_dev->intf);
  if (!ret)
   usb_autopm_put_interface(mux_dev->intf);
 }

 spin_lock_irqsave(&mux_dev->write_lock, flags);

 total_len = ALIGN(MUX_HEADER_SIZE + len, 4);

 t = alloc_mux_tx(total_len);
 if (!t) {
  pr_err("alloc_mux_tx fail\n");
  spin_unlock_irqrestore(&mux_dev->write_lock, flags);
  return -ENOMEM;
 }

 mux_header = (struct mux_pkt_header *)t->buf;
 mux_header->start_flag = __cpu_to_le32(START_FLAG);
 mux_header->seq_num = __cpu_to_le32(seq_num++);
 mux_header->payload_size = __cpu_to_le32((u32)len);
 mux_header->packet_type = __cpu_to_le16(packet_type[tty_index]);

 memcpy(t->buf + MUX_HEADER_SIZE, data, len);
 memset(t->buf + MUX_HEADER_SIZE + len, 0,
        total_len - MUX_HEADER_SIZE - len);

 t->len = total_len;
 t->callback = cb;
 t->cb_data = cb_data;

 usb_fill_bulk_urb(t->urb,
     usbdev,
     usb_sndbulkpipe(usbdev, 5),
     t->buf,
     total_len,
     gdm_mux_send_complete,
     t);

 ret = usb_submit_urb(t->urb, GFP_ATOMIC);

 spin_unlock_irqrestore(&mux_dev->write_lock, flags);

 if (ret)
  pr_err("usb_submit_urb Error: %d\n", ret);

 usb_mark_last_busy(usbdev);

 return ret;
}
