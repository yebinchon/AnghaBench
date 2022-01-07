
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_ep {int halt; int num; } ;
struct renesas_usb3 {int dummy; } ;


 int EINVAL ;
 scalar_t__ unlikely (int ) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_set_p0_con_stall (struct renesas_usb3*) ;
 int usb3_set_p0_con_stop (struct renesas_usb3*) ;

__attribute__((used)) static int usb3_set_halt_p0(struct renesas_usb3_ep *usb3_ep, bool halt)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);

 if (unlikely(usb3_ep->num))
  return -EINVAL;

 usb3_ep->halt = halt;
 if (halt)
  usb3_set_p0_con_stall(usb3);
 else
  usb3_set_p0_con_stop(usb3);

 return 0;
}
