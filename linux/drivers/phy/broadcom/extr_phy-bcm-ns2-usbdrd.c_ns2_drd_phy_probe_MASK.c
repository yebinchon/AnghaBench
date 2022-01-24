#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct ns2_phy_driver {scalar_t__ id_irq; scalar_t__ vbus_irq; int /*<<< orphan*/  debounce_jiffies; int /*<<< orphan*/  wq_extcon; struct ns2_phy_data* data; struct phy_provider* crmu_usb2_ctrl; struct phy_provider* vbus_gpiod; struct phy_provider* id_gpiod; struct phy_provider* edev; struct phy_provider* usb2h_strap_reg; struct phy_provider* idmdrd_rst_ctrl; struct phy_provider* icfgdrd_regs; } ;
struct ns2_phy_data {struct phy_provider* phy; struct ns2_phy_driver* driver; } ;

/* Variables and functions */
 int AFE_CORERDY_VDDC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int GPIO_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (struct phy_provider*) ; 
 int PHY_RESETB ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct ns2_phy_driver*) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,struct phy_provider*) ; 
 void* FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct device*,struct resource*) ; 
 void* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC11 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC12 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int,char*,struct ns2_phy_driver*) ; 
 int /*<<< orphan*/  extcon_work ; 
 int /*<<< orphan*/  gpio_irq_handler ; 
 int FUNC14 (struct phy_provider*,int) ; 
 void* FUNC15 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC17 (struct phy_provider*,struct ns2_phy_data*) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct ns2_phy_driver*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct phy_provider*) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 int /*<<< orphan*/  usb_extcon_cable ; 
 int /*<<< orphan*/  FUNC22 (int,struct phy_provider*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct ns2_phy_driver *driver;
	struct ns2_phy_data *data;
	struct resource *res;
	int ret;
	u32 val;

	driver = FUNC10(dev, sizeof(struct ns2_phy_driver),
			      GFP_KERNEL);
	if (!driver)
		return -ENOMEM;

	driver->data = FUNC10(dev, sizeof(struct ns2_phy_data),
				  GFP_KERNEL);
	if (!driver->data)
		return -ENOMEM;

	res = FUNC18(pdev, IORESOURCE_MEM, "icfg");
	driver->icfgdrd_regs = FUNC9(dev, res);
	if (FUNC1(driver->icfgdrd_regs))
		return FUNC2(driver->icfgdrd_regs);

	res = FUNC18(pdev, IORESOURCE_MEM, "rst-ctrl");
	driver->idmdrd_rst_ctrl = FUNC9(dev, res);
	if (FUNC1(driver->idmdrd_rst_ctrl))
		return FUNC2(driver->idmdrd_rst_ctrl);

	res = FUNC18(pdev, IORESOURCE_MEM, "crmu-ctrl");
	driver->crmu_usb2_ctrl = FUNC9(dev, res);
	if (FUNC1(driver->crmu_usb2_ctrl))
		return FUNC2(driver->crmu_usb2_ctrl);

	res = FUNC18(pdev, IORESOURCE_MEM, "usb2-strap");
	driver->usb2h_strap_reg = FUNC9(dev, res);
	if (FUNC1(driver->usb2h_strap_reg))
		return FUNC2(driver->usb2h_strap_reg);

	 /* create extcon */
	driver->id_gpiod = FUNC8(&pdev->dev, "id", GPIOD_IN);
	if (FUNC1(driver->id_gpiod)) {
		FUNC3(dev, "failed to get ID GPIO\n");
		return FUNC2(driver->id_gpiod);
	}
	driver->vbus_gpiod = FUNC8(&pdev->dev, "vbus", GPIOD_IN);
	if (FUNC1(driver->vbus_gpiod)) {
		FUNC3(dev, "failed to get VBUS GPIO\n");
		return FUNC2(driver->vbus_gpiod);
	}

	driver->edev = FUNC6(dev, usb_extcon_cable);
	if (FUNC1(driver->edev)) {
		FUNC3(dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	ret = FUNC7(dev, driver->edev);
	if (ret < 0) {
		FUNC3(dev, "failed to register extcon device\n");
		return ret;
	}

	ret = FUNC14(driver->id_gpiod, GPIO_DELAY * 1000);
	if (ret < 0)
		driver->debounce_jiffies = FUNC16(GPIO_DELAY);

	FUNC0(&driver->wq_extcon, extcon_work);

	driver->id_irq = FUNC15(driver->id_gpiod);
	if (driver->id_irq < 0) {
		FUNC3(dev, "failed to get ID IRQ\n");
		return driver->id_irq;
	}

	driver->vbus_irq = FUNC15(driver->vbus_gpiod);
	if (driver->vbus_irq < 0) {
		FUNC3(dev, "failed to get ID IRQ\n");
		return driver->vbus_irq;
	}

	ret = FUNC13(dev, driver->id_irq, gpio_irq_handler,
			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
			       "usb_id", driver);
	if (ret < 0) {
		FUNC3(dev, "failed to request handler for ID IRQ\n");
		return ret;
	}

	ret = FUNC13(dev, driver->vbus_irq, gpio_irq_handler,
			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
			       "usb_vbus", driver);
	if (ret < 0) {
		FUNC3(dev, "failed to request handler for VBUS IRQ\n");
		return ret;
	}

	FUNC5(dev, driver);

	/* Shutdown all ports. They can be powered up as required */
	val = FUNC21(driver->crmu_usb2_ctrl);
	val &= ~(AFE_CORERDY_VDDC | PHY_RESETB);
	FUNC22(val, driver->crmu_usb2_ctrl);

	data = driver->data;
	data->phy = FUNC12(dev, dev->of_node, &ops);
	if (FUNC1(data->phy)) {
		FUNC3(dev, "Failed to create usb drd phy\n");
		return FUNC2(data->phy);
	}

	data->driver = driver;
	FUNC17(data->phy, data);

	phy_provider = FUNC11(dev, of_phy_simple_xlate);
	if (FUNC1(phy_provider)) {
		FUNC3(dev, "Failed to register as phy provider\n");
		return FUNC2(phy_provider);
	}

	FUNC19(pdev, driver);

	FUNC4(dev, "Registered NS2 DRD Phy device\n");
	FUNC20(system_power_efficient_wq, &driver->wq_extcon,
			   driver->debounce_jiffies);

	return 0;
}