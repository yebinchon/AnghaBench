
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pcwd_private {int dummy; } ;


 int CMD_WRITE_WATCHDOG_TIMEOUT ;
 int EINVAL ;
 int heartbeat ;
 int usb_pcwd_send_command (struct usb_pcwd_private*,int ,unsigned char*,unsigned char*) ;

__attribute__((used)) static int usb_pcwd_set_heartbeat(struct usb_pcwd_private *usb_pcwd, int t)
{
 unsigned char msb = t / 256;
 unsigned char lsb = t % 256;

 if ((t < 0x0001) || (t > 0xFFFF))
  return -EINVAL;


 usb_pcwd_send_command(usb_pcwd, CMD_WRITE_WATCHDOG_TIMEOUT, &msb, &lsb);

 heartbeat = t;
 return 0;
}
