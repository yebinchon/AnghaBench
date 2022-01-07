
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* otg; } ;
struct tahvo_usb {TYPE_3__ phy; TYPE_2__* pt_dev; } ;
struct retu_dev {int dummy; } ;
struct TYPE_8__ {int state; scalar_t__ gadget; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int OTG_STATE_UNDEFINED ;
 int TAHVO_REG_USBR ;
 struct retu_dev* dev_get_drvdata (int ) ;
 int retu_write (struct retu_dev*,int ,int ) ;
 int usb_gadget_vbus_disconnect (scalar_t__) ;

__attribute__((used)) static void tahvo_usb_power_off(struct tahvo_usb *tu)
{
 struct retu_dev *rdev = dev_get_drvdata(tu->pt_dev->dev.parent);


 if (tu->phy.otg->gadget)
  usb_gadget_vbus_disconnect(tu->phy.otg->gadget);


 retu_write(rdev, TAHVO_REG_USBR, 0);
 tu->phy.otg->state = OTG_STATE_UNDEFINED;
}
