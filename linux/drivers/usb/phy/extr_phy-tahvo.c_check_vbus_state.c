
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* otg; } ;
struct tahvo_usb {int vbus_state; TYPE_2__* pt_dev; int extcon; TYPE_3__ phy; } ;
struct retu_dev {int dummy; } ;
struct TYPE_8__ {int kobj; int parent; } ;
struct TYPE_6__ {TYPE_4__ dev; } ;
struct TYPE_5__ {int state; int gadget; } ;


 int EXTCON_USB ;




 int TAHVO_REG_IDSR ;
 int TAHVO_STAT_VBUS ;
 int USB_EVENT_ENUMERATED ;
 int USB_EVENT_NONE ;
 struct retu_dev* dev_get_drvdata (int ) ;
 int dev_info (TYPE_4__*,char*) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int retu_read (struct retu_dev*,int ) ;
 int sysfs_notify (int *,int *,char*) ;
 int usb_gadget_vbus_connect (int ) ;
 int usb_gadget_vbus_disconnect (int ) ;
 int usb_phy_set_event (TYPE_3__*,int ) ;

__attribute__((used)) static void check_vbus_state(struct tahvo_usb *tu)
{
 struct retu_dev *rdev = dev_get_drvdata(tu->pt_dev->dev.parent);
 int reg, prev_state;

 reg = retu_read(rdev, TAHVO_REG_IDSR);
 if (reg & TAHVO_STAT_VBUS) {
  switch (tu->phy.otg->state) {
  case 129:

   if (tu->phy.otg->gadget)
    usb_gadget_vbus_connect(tu->phy.otg->gadget);
   tu->phy.otg->state = 128;
   usb_phy_set_event(&tu->phy, USB_EVENT_ENUMERATED);
   break;
  case 130:




   tu->phy.otg->state = 131;
   break;
  default:
   break;
  }
  dev_info(&tu->pt_dev->dev, "USB cable connected\n");
 } else {
  switch (tu->phy.otg->state) {
  case 128:
   if (tu->phy.otg->gadget)
    usb_gadget_vbus_disconnect(tu->phy.otg->gadget);
   tu->phy.otg->state = 129;
   usb_phy_set_event(&tu->phy, USB_EVENT_NONE);
   break;
  case 131:
   tu->phy.otg->state = 130;
   break;
  default:
   break;
  }
  dev_info(&tu->pt_dev->dev, "USB cable disconnected\n");
 }

 prev_state = tu->vbus_state;
 tu->vbus_state = reg & TAHVO_STAT_VBUS;
 if (prev_state != tu->vbus_state) {
  extcon_set_state_sync(tu->extcon, EXTCON_USB, tu->vbus_state);
  sysfs_notify(&tu->pt_dev->dev.kobj, ((void*)0), "vbus_state");
 }
}
