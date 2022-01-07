
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pcwd_private {int dummy; } ;


 int CMD_ENABLE_WATCHDOG ;
 int pr_err (char*) ;
 int usb_pcwd_send_command (struct usb_pcwd_private*,int ,unsigned char*,unsigned char*) ;

__attribute__((used)) static int usb_pcwd_start(struct usb_pcwd_private *usb_pcwd)
{
 unsigned char msb = 0x00;
 unsigned char lsb = 0x00;
 int retval;


 retval = usb_pcwd_send_command(usb_pcwd, CMD_ENABLE_WATCHDOG,
        &msb, &lsb);

 if ((retval == 0) || (lsb == 0)) {
  pr_err("Card did not acknowledge enable attempt\n");
  return -1;
 }

 return 0;
}
