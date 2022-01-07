
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {int dev; TYPE_1__* serial; } ;
typedef int __u16 ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KL5KUSB105A_SIO_POLL ;
 int KLSI_STATUSBUF_LEN ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_err (int *,char*,int) ;
 int get_unaligned_le16 (int*) ;
 int kfree (int*) ;
 unsigned long klsi_105_status2linestate (int ) ;
 int* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int klsi_105_get_line_state(struct usb_serial_port *port,
       unsigned long *line_state_p)
{
 int rc;
 u8 *status_buf;
 __u16 status;

 status_buf = kmalloc(KLSI_STATUSBUF_LEN, GFP_KERNEL);
 if (!status_buf)
  return -ENOMEM;

 status_buf[0] = 0xff;
 status_buf[1] = 0xff;
 rc = usb_control_msg(port->serial->dev,
        usb_rcvctrlpipe(port->serial->dev, 0),
        KL5KUSB105A_SIO_POLL,
        USB_TYPE_VENDOR | USB_DIR_IN,
        0,
        0,
        status_buf, KLSI_STATUSBUF_LEN,
        10000
        );
 if (rc != KLSI_STATUSBUF_LEN) {
  dev_err(&port->dev, "reading line status failed: %d\n", rc);
  if (rc >= 0)
   rc = -EIO;
 } else {
  status = get_unaligned_le16(status_buf);

  dev_dbg(&port->dev, "read status %02x %02x\n",
   status_buf[0], status_buf[1]);

  *line_state_p = klsi_105_status2linestate(status);
 }

 kfree(status_buf);
 return rc;
}
