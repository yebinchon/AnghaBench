
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int controller; } ;
struct usb_hcd {int power_budget; TYPE_1__ self; int state; } ;
struct sl811 {TYPE_2__* board; } ;
struct TYPE_4__ {int power; int can_wakeup; } ;


 int HC_STATE_RUNNING ;
 int device_can_wakeup (int ) ;
 int device_init_wakeup (int ,int ) ;
 struct sl811* hcd_to_sl811 (struct usb_hcd*) ;
 int port_power (struct sl811*,int) ;

__attribute__((used)) static int
sl811h_start(struct usb_hcd *hcd)
{
 struct sl811 *sl811 = hcd_to_sl811(hcd);


 hcd->state = HC_STATE_RUNNING;

 if (sl811->board) {
  if (!device_can_wakeup(hcd->self.controller))
   device_init_wakeup(hcd->self.controller,
    sl811->board->can_wakeup);
  hcd->power_budget = sl811->board->power * 2;
 }


 port_power(sl811, 1);

 return 0;
}
