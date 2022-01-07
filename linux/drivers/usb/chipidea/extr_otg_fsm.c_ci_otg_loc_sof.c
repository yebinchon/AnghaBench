
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dev; } ;
struct otg_fsm {TYPE_2__* otg; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int root_hub; } ;


 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int usb_disable_autosuspend (struct usb_device*) ;
 int usb_enable_autosuspend (struct usb_device*) ;
 struct usb_device* usb_hub_find_child (int ,int) ;

__attribute__((used)) static void ci_otg_loc_sof(struct otg_fsm *fsm, int on)
{
 struct usb_device *udev;

 if (!fsm->otg->host)
  return;

 udev = usb_hub_find_child(fsm->otg->host->root_hub, 1);
 if (!udev)
  return;

 if (on) {
  usb_disable_autosuspend(udev);
 } else {
  pm_runtime_set_autosuspend_delay(&udev->dev, 0);
  usb_enable_autosuspend(udev);
 }
}
