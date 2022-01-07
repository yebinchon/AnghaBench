
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_pcwd_private {unsigned char cmd_command; unsigned char cmd_data_msb; unsigned char cmd_data_lsb; int cmd_received; TYPE_1__* interface; int interface_number; int udev; int exists; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int HID_DT_REPORT ;
 int HID_REQ_SET_REPORT ;
 int USB_COMMAND_TIMEOUT ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_dbg (int *,char*,unsigned char,unsigned char,unsigned char) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int mdelay (int) ;
 int usb_control_msg (int ,int ,int ,int ,int,int ,unsigned char*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usb_pcwd_send_command(struct usb_pcwd_private *usb_pcwd,
  unsigned char cmd, unsigned char *msb, unsigned char *lsb)
{
 int got_response, count;
 unsigned char *buf;



 if ((!usb_pcwd) || (!usb_pcwd->exists))
  return -1;

 buf = kmalloc(6, GFP_KERNEL);
 if (buf == ((void*)0))
  return 0;



 buf[0] = cmd;
 buf[1] = *msb;
 buf[2] = *lsb;
 buf[3] = buf[4] = buf[5] = 0;

 dev_dbg(&usb_pcwd->interface->dev,
  "sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x",
  buf[0], buf[1], buf[2]);

 atomic_set(&usb_pcwd->cmd_received, 0);

 if (usb_control_msg(usb_pcwd->udev, usb_sndctrlpipe(usb_pcwd->udev, 0),
   HID_REQ_SET_REPORT, HID_DT_REPORT,
   0x0200, usb_pcwd->interface_number, buf, 6,
   USB_COMMAND_TIMEOUT) != 6) {
  dev_dbg(&usb_pcwd->interface->dev,
   "usb_pcwd_send_command: error in usb_control_msg for cmd 0x%x 0x%x 0x%x\n",
   cmd, *msb, *lsb);
 }


 got_response = 0;
 for (count = 0; (count < USB_COMMAND_TIMEOUT) && (!got_response);
        count++) {
  mdelay(1);
  if (atomic_read(&usb_pcwd->cmd_received))
   got_response = 1;
 }

 if ((got_response) && (cmd == usb_pcwd->cmd_command)) {

  *msb = usb_pcwd->cmd_data_msb;
  *lsb = usb_pcwd->cmd_data_lsb;
 }

 kfree(buf);

 return got_response;
}
