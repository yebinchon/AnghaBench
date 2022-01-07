
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int speed; } ;
struct cdns3_device {TYPE_1__* regs; TYPE_2__ gadget; } ;
struct cdns3 {struct cdns3_device* gadget_dev; } ;
struct TYPE_3__ {int usb_ien; } ;


 int USB_SPEED_UNKNOWN ;
 int USB_STATE_NOTATTACHED ;
 int cdns3_disconnect_gadget (struct cdns3_device*) ;
 int cdns3_hw_reset_eps_config (struct cdns3_device*) ;
 int usb_gadget_set_state (TYPE_2__*,int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static int cdns3_gadget_suspend(struct cdns3 *cdns, bool do_wakeup)
{
 struct cdns3_device *priv_dev = cdns->gadget_dev;

 cdns3_disconnect_gadget(priv_dev);

 priv_dev->gadget.speed = USB_SPEED_UNKNOWN;
 usb_gadget_set_state(&priv_dev->gadget, USB_STATE_NOTATTACHED);
 cdns3_hw_reset_eps_config(priv_dev);


 writel(0, &priv_dev->regs->usb_ien);

 return 0;
}
