
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_otg {TYPE_2__* gadget; } ;
struct otg_fsm {struct usb_otg* otg; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;
struct TYPE_4__ {int (* suspend ) (struct device*,int ) ;int (* resume ) (struct device*) ;} ;


 int ENODEV ;
 int VDBG (char*,char*) ;
 int otg_suspend_state ;
 int stub1 (struct device*) ;
 int stub2 (struct device*,int ) ;

int fsl_otg_start_gadget(struct otg_fsm *fsm, int on)
{
 struct usb_otg *otg = fsm->otg;
 struct device *dev;

 if (!otg->gadget || !otg->gadget->dev.parent)
  return -ENODEV;

 VDBG("gadget %s\n", on ? "on" : "off");
 dev = otg->gadget->dev.parent;

 if (on) {
  if (dev->driver->resume)
   dev->driver->resume(dev);
 } else {
  if (dev->driver->suspend)
   dev->driver->suspend(dev, otg_suspend_state);
 }

 return 0;
}
