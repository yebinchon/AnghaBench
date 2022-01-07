
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hub {int dummy; } ;



__attribute__((used)) static int hub_handle_remote_wakeup(struct usb_hub *hub, unsigned int port,
  u16 portstatus, u16 portchange)
{
 return 0;
}
