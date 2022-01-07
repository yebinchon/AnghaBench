
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_gadget_driver {scalar_t__ max_speed; int setup; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct s3c_hsudc {struct usb_gadget_driver* driver; int supplies; TYPE_1__* pd; int dev; int irq; TYPE_2__ gadget; TYPE_3__* transceiver; } ;
struct TYPE_6__ {int otg; } ;
struct TYPE_4__ {int (* gpio_init ) () ;} ;


 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int IS_ERR_OR_NULL (TYPE_3__*) ;
 scalar_t__ USB_SPEED_FULL ;
 int dev_err (int ,char*,int) ;
 int enable_irq (int ) ;
 int otg_set_peripheral (int ,TYPE_2__*) ;
 int pm_runtime_get_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int s3c_hsudc_init_phy () ;
 int s3c_hsudc_reconfig (struct s3c_hsudc*) ;
 int stub1 () ;
 struct s3c_hsudc* to_hsudc (struct usb_gadget*) ;

__attribute__((used)) static int s3c_hsudc_start(struct usb_gadget *gadget,
  struct usb_gadget_driver *driver)
{
 struct s3c_hsudc *hsudc = to_hsudc(gadget);
 int ret;

 if (!driver
  || driver->max_speed < USB_SPEED_FULL
  || !driver->setup)
  return -EINVAL;

 if (!hsudc)
  return -ENODEV;

 if (hsudc->driver)
  return -EBUSY;

 hsudc->driver = driver;

 ret = regulator_bulk_enable(ARRAY_SIZE(hsudc->supplies),
        hsudc->supplies);
 if (ret != 0) {
  dev_err(hsudc->dev, "failed to enable supplies: %d\n", ret);
  goto err_supplies;
 }


 if (!IS_ERR_OR_NULL(hsudc->transceiver)) {
  ret = otg_set_peripheral(hsudc->transceiver->otg,
     &hsudc->gadget);
  if (ret) {
   dev_err(hsudc->dev, "%s: can't bind to transceiver\n",
     hsudc->gadget.name);
   goto err_otg;
  }
 }

 enable_irq(hsudc->irq);
 s3c_hsudc_reconfig(hsudc);

 pm_runtime_get_sync(hsudc->dev);

 s3c_hsudc_init_phy();
 if (hsudc->pd->gpio_init)
  hsudc->pd->gpio_init();

 return 0;
err_otg:
 regulator_bulk_disable(ARRAY_SIZE(hsudc->supplies), hsudc->supplies);
err_supplies:
 hsudc->driver = ((void*)0);
 return ret;
}
