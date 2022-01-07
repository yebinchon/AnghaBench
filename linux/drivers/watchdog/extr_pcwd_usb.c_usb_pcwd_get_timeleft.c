
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pcwd_private {int dummy; } ;


 int CMD_READ_WATCHDOG_TIMEOUT ;
 int usb_pcwd_send_command (struct usb_pcwd_private*,int ,unsigned char*,unsigned char*) ;

__attribute__((used)) static int usb_pcwd_get_timeleft(struct usb_pcwd_private *usb_pcwd,
        int *time_left)
{
 unsigned char msb, lsb;



 usb_pcwd_send_command(usb_pcwd, CMD_READ_WATCHDOG_TIMEOUT, &msb, &lsb);

 *time_left = (msb << 8) + lsb;

 return 0;
}
