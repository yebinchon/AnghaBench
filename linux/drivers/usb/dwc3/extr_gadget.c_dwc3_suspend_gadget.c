
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc3 {int lock; int gadget; TYPE_1__* gadget_driver; } ;
struct TYPE_2__ {int (* suspend ) (int *) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void dwc3_suspend_gadget(struct dwc3 *dwc)
{
 if (dwc->gadget_driver && dwc->gadget_driver->suspend) {
  spin_unlock(&dwc->lock);
  dwc->gadget_driver->suspend(&dwc->gadget);
  spin_lock(&dwc->lock);
 }
}
