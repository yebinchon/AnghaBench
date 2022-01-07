
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pxa_udc {scalar_t__ irq; int clk; int transceiver; int gadget; int * dev; scalar_t__ vbus_sensed; int gpiod; int regs; int udc_command; } ;
struct pxa2xx_udc_mach_info {int gpio_pullup; int udc_command; scalar_t__ gpio_pullup_inverted; } ;
struct platform_device {int dev; } ;


 int GPIOD_ASIS ;
 unsigned long GPIOF_ACTIVE_LOW ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int USB_PHY_TYPE_USB2 ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int *,char*,int,...) ;
 struct pxa2xx_udc_mach_info* dev_get_platdata (int *) ;
 int devm_clk_get (int *,int *) ;
 int devm_gpio_request_one (int *,int,unsigned long,char*) ;
 int devm_gpiod_get (int *,int *,int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct pxa_udc*) ;
 int devm_usb_get_phy_by_phandle (int *,char*,int ) ;
 int driver_name ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_to_desc (int) ;
 int gpiod_direction_output (int ,int ) ;
 struct pxa_udc memory ;
 scalar_t__ of_have_populated_dt () ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxa_udc*) ;
 int pxa27x_udc_phy ;
 int pxa_init_debugfs (struct pxa_udc*) ;
 int pxa_udc_irq ;
 scalar_t__ should_enable_udc (struct pxa_udc*) ;
 struct pxa_udc* the_controller ;
 int udc_enable (struct pxa_udc*) ;
 int udc_init_data (struct pxa_udc*) ;
 int usb_add_gadget_udc (int *,int *) ;
 int usb_get_phy (int ) ;
 int usb_register_notifier (int ,int *) ;
 int usb_unregister_notifier (int ,int *) ;

__attribute__((used)) static int pxa_udc_probe(struct platform_device *pdev)
{
 struct resource *regs;
 struct pxa_udc *udc = &memory;
 int retval = 0, gpio;
 struct pxa2xx_udc_mach_info *mach = dev_get_platdata(&pdev->dev);
 unsigned long gpio_flags;

 if (mach) {
  gpio_flags = mach->gpio_pullup_inverted ? GPIOF_ACTIVE_LOW : 0;
  gpio = mach->gpio_pullup;
  if (gpio_is_valid(gpio)) {
   retval = devm_gpio_request_one(&pdev->dev, gpio,
             gpio_flags,
             "USB D+ pullup");
   if (retval)
    return retval;
   udc->gpiod = gpio_to_desc(mach->gpio_pullup);
  }
  udc->udc_command = mach->udc_command;
 } else {
  udc->gpiod = devm_gpiod_get(&pdev->dev, ((void*)0), GPIOD_ASIS);
 }

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 udc->regs = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(udc->regs))
  return PTR_ERR(udc->regs);
 udc->irq = platform_get_irq(pdev, 0);
 if (udc->irq < 0)
  return udc->irq;

 udc->dev = &pdev->dev;
 if (of_have_populated_dt()) {
  udc->transceiver =
   devm_usb_get_phy_by_phandle(udc->dev, "phys", 0);
  if (IS_ERR(udc->transceiver))
   return PTR_ERR(udc->transceiver);
 } else {
  udc->transceiver = usb_get_phy(USB_PHY_TYPE_USB2);
 }

 if (IS_ERR(udc->gpiod)) {
  dev_err(&pdev->dev, "Couldn't find or request D+ gpio : %ld\n",
   PTR_ERR(udc->gpiod));
  return PTR_ERR(udc->gpiod);
 }
 if (udc->gpiod)
  gpiod_direction_output(udc->gpiod, 0);

 udc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(udc->clk))
  return PTR_ERR(udc->clk);

 retval = clk_prepare(udc->clk);
 if (retval)
  return retval;

 udc->vbus_sensed = 0;

 the_controller = udc;
 platform_set_drvdata(pdev, udc);
 udc_init_data(udc);


 retval = devm_request_irq(&pdev->dev, udc->irq, pxa_udc_irq,
      IRQF_SHARED, driver_name, udc);
 if (retval != 0) {
  dev_err(udc->dev, "%s: can't get irq %i, err %d\n",
   driver_name, udc->irq, retval);
  goto err;
 }

 if (!IS_ERR_OR_NULL(udc->transceiver))
  usb_register_notifier(udc->transceiver, &pxa27x_udc_phy);
 retval = usb_add_gadget_udc(&pdev->dev, &udc->gadget);
 if (retval)
  goto err_add_gadget;

 pxa_init_debugfs(udc);
 if (should_enable_udc(udc))
  udc_enable(udc);
 return 0;

err_add_gadget:
 if (!IS_ERR_OR_NULL(udc->transceiver))
  usb_unregister_notifier(udc->transceiver, &pxa27x_udc_phy);
err:
 clk_unprepare(udc->clk);
 return retval;
}
