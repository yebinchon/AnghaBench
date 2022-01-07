
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct ns2_phy_driver {scalar_t__ id_irq; scalar_t__ vbus_irq; int debounce_jiffies; int wq_extcon; struct ns2_phy_data* data; struct phy_provider* crmu_usb2_ctrl; struct phy_provider* vbus_gpiod; struct phy_provider* id_gpiod; struct phy_provider* edev; struct phy_provider* usb2h_strap_reg; struct phy_provider* idmdrd_rst_ctrl; struct phy_provider* icfgdrd_regs; } ;
struct ns2_phy_data {struct phy_provider* phy; struct ns2_phy_driver* driver; } ;


 int AFE_CORERDY_VDDC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIO_DELAY ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PHY_RESETB ;
 int PTR_ERR (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct ns2_phy_driver*) ;
 struct phy_provider* devm_extcon_dev_allocate (struct device*,int ) ;
 int devm_extcon_dev_register (struct device*,struct phy_provider*) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int ,int *) ;
 int devm_request_irq (struct device*,int,int ,int,char*,struct ns2_phy_driver*) ;
 int extcon_work ;
 int gpio_irq_handler ;
 int gpiod_set_debounce (struct phy_provider*,int) ;
 void* gpiod_to_irq (struct phy_provider*) ;
 int msecs_to_jiffies (int) ;
 int of_phy_simple_xlate ;
 int ops ;
 int phy_set_drvdata (struct phy_provider*,struct ns2_phy_data*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct ns2_phy_driver*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int readl (struct phy_provider*) ;
 int system_power_efficient_wq ;
 int usb_extcon_cable ;
 int writel (int,struct phy_provider*) ;

__attribute__((used)) static int ns2_drd_phy_probe(struct platform_device *pdev)
{
 struct phy_provider *phy_provider;
 struct device *dev = &pdev->dev;
 struct ns2_phy_driver *driver;
 struct ns2_phy_data *data;
 struct resource *res;
 int ret;
 u32 val;

 driver = devm_kzalloc(dev, sizeof(struct ns2_phy_driver),
         GFP_KERNEL);
 if (!driver)
  return -ENOMEM;

 driver->data = devm_kzalloc(dev, sizeof(struct ns2_phy_data),
      GFP_KERNEL);
 if (!driver->data)
  return -ENOMEM;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "icfg");
 driver->icfgdrd_regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(driver->icfgdrd_regs))
  return PTR_ERR(driver->icfgdrd_regs);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "rst-ctrl");
 driver->idmdrd_rst_ctrl = devm_ioremap_resource(dev, res);
 if (IS_ERR(driver->idmdrd_rst_ctrl))
  return PTR_ERR(driver->idmdrd_rst_ctrl);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "crmu-ctrl");
 driver->crmu_usb2_ctrl = devm_ioremap_resource(dev, res);
 if (IS_ERR(driver->crmu_usb2_ctrl))
  return PTR_ERR(driver->crmu_usb2_ctrl);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "usb2-strap");
 driver->usb2h_strap_reg = devm_ioremap_resource(dev, res);
 if (IS_ERR(driver->usb2h_strap_reg))
  return PTR_ERR(driver->usb2h_strap_reg);


 driver->id_gpiod = devm_gpiod_get(&pdev->dev, "id", GPIOD_IN);
 if (IS_ERR(driver->id_gpiod)) {
  dev_err(dev, "failed to get ID GPIO\n");
  return PTR_ERR(driver->id_gpiod);
 }
 driver->vbus_gpiod = devm_gpiod_get(&pdev->dev, "vbus", GPIOD_IN);
 if (IS_ERR(driver->vbus_gpiod)) {
  dev_err(dev, "failed to get VBUS GPIO\n");
  return PTR_ERR(driver->vbus_gpiod);
 }

 driver->edev = devm_extcon_dev_allocate(dev, usb_extcon_cable);
 if (IS_ERR(driver->edev)) {
  dev_err(dev, "failed to allocate extcon device\n");
  return -ENOMEM;
 }

 ret = devm_extcon_dev_register(dev, driver->edev);
 if (ret < 0) {
  dev_err(dev, "failed to register extcon device\n");
  return ret;
 }

 ret = gpiod_set_debounce(driver->id_gpiod, GPIO_DELAY * 1000);
 if (ret < 0)
  driver->debounce_jiffies = msecs_to_jiffies(GPIO_DELAY);

 INIT_DELAYED_WORK(&driver->wq_extcon, extcon_work);

 driver->id_irq = gpiod_to_irq(driver->id_gpiod);
 if (driver->id_irq < 0) {
  dev_err(dev, "failed to get ID IRQ\n");
  return driver->id_irq;
 }

 driver->vbus_irq = gpiod_to_irq(driver->vbus_gpiod);
 if (driver->vbus_irq < 0) {
  dev_err(dev, "failed to get ID IRQ\n");
  return driver->vbus_irq;
 }

 ret = devm_request_irq(dev, driver->id_irq, gpio_irq_handler,
          IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
          "usb_id", driver);
 if (ret < 0) {
  dev_err(dev, "failed to request handler for ID IRQ\n");
  return ret;
 }

 ret = devm_request_irq(dev, driver->vbus_irq, gpio_irq_handler,
          IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
          "usb_vbus", driver);
 if (ret < 0) {
  dev_err(dev, "failed to request handler for VBUS IRQ\n");
  return ret;
 }

 dev_set_drvdata(dev, driver);


 val = readl(driver->crmu_usb2_ctrl);
 val &= ~(AFE_CORERDY_VDDC | PHY_RESETB);
 writel(val, driver->crmu_usb2_ctrl);

 data = driver->data;
 data->phy = devm_phy_create(dev, dev->of_node, &ops);
 if (IS_ERR(data->phy)) {
  dev_err(dev, "Failed to create usb drd phy\n");
  return PTR_ERR(data->phy);
 }

 data->driver = driver;
 phy_set_drvdata(data->phy, data);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 if (IS_ERR(phy_provider)) {
  dev_err(dev, "Failed to register as phy provider\n");
  return PTR_ERR(phy_provider);
 }

 platform_set_drvdata(pdev, driver);

 dev_info(dev, "Registered NS2 DRD Phy device\n");
 queue_delayed_work(system_power_efficient_wq, &driver->wq_extcon,
      driver->debounce_jiffies);

 return 0;
}
