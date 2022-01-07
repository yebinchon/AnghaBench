
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* otg; } ;
struct tahvo_usb {TYPE_4__ phy; int extcon; TYPE_2__* pt_dev; } ;
struct retu_dev {int dummy; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int EXTCON_USB_HOST ;
 int OTG_STATE_B_IDLE ;
 int TAHVO_REG_USBR ;
 int USBR_NSUSPEND ;
 int USBR_REGOUT ;
 int USBR_SLAVE_CONTROL ;
 int USBR_SLAVE_SW ;
 int check_vbus_state (struct tahvo_usb*) ;
 struct retu_dev* dev_get_drvdata (int ) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int retu_write (struct retu_dev*,int ,int) ;

__attribute__((used)) static void tahvo_usb_become_peripheral(struct tahvo_usb *tu)
{
 struct retu_dev *rdev = dev_get_drvdata(tu->pt_dev->dev.parent);

 extcon_set_state_sync(tu->extcon, EXTCON_USB_HOST, 0);


 retu_write(rdev, TAHVO_REG_USBR, USBR_SLAVE_CONTROL | USBR_REGOUT |
     USBR_NSUSPEND | USBR_SLAVE_SW);
 tu->phy.otg->state = OTG_STATE_B_IDLE;

 check_vbus_state(tu);
}
