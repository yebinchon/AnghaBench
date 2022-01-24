#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ brightness; int /*<<< orphan*/  power; } ;
struct lcd_device {TYPE_1__ props; } ;
struct cr_panel {struct lcd_device* cr_lcd_device; struct lcd_device* cr_backlight_device; } ;
struct backlight_properties {int /*<<< orphan*/  type; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  CRVML_DEVICE_LPC ; 
 int CRVML_GPIOEN_BIT ; 
 int /*<<< orphan*/  CRVML_REG_GPIOBAR ; 
 int /*<<< orphan*/  CRVML_REG_GPIOEN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  cr_backlight_ops ; 
 int /*<<< orphan*/  FUNC2 (struct lcd_device*) ; 
 int /*<<< orphan*/  cr_lcd_ops ; 
 int /*<<< orphan*/  FUNC3 (struct lcd_device*,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct cr_panel* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int gpio_bar ; 
 int /*<<< orphan*/  lpc_dev ; 
 int /*<<< orphan*/  FUNC7 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct cr_panel*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct backlight_device *bdp;
	struct lcd_device *ldp;
	struct cr_panel *crp;
	u8 dev_en;

	lpc_dev = FUNC9(PCI_VENDOR_ID_INTEL,
					CRVML_DEVICE_LPC, NULL);
	if (!lpc_dev) {
		FUNC13("INTEL CARILLO RANCH LPC not found.\n");
		return -ENODEV;
	}

	FUNC10(lpc_dev, CRVML_REG_GPIOEN, &dev_en);
	if (!(dev_en & CRVML_GPIOEN_BIT)) {
		FUNC13("Carillo Ranch GPIO device was not enabled.\n");
		FUNC8(lpc_dev);
		return -ENODEV;
	}

	FUNC7(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	bdp = FUNC4(&pdev->dev, "cr-backlight",
					&pdev->dev, NULL, &cr_backlight_ops,
					&props);
	if (FUNC0(bdp)) {
		FUNC8(lpc_dev);
		return FUNC1(bdp);
	}

	ldp = FUNC6(&pdev->dev, "cr-lcd", &pdev->dev, NULL,
					&cr_lcd_ops);
	if (FUNC0(ldp)) {
		FUNC8(lpc_dev);
		return FUNC1(ldp);
	}

	FUNC11(lpc_dev, CRVML_REG_GPIOBAR,
			      &gpio_bar);
	gpio_bar &= ~0x3F;

	crp = FUNC5(&pdev->dev, sizeof(*crp), GFP_KERNEL);
	if (!crp) {
		FUNC8(lpc_dev);
		return -ENOMEM;
	}

	crp->cr_backlight_device = bdp;
	crp->cr_lcd_device = ldp;
	crp->cr_backlight_device->props.power = FB_BLANK_UNBLANK;
	crp->cr_backlight_device->props.brightness = 0;
	FUNC2(crp->cr_backlight_device);
	FUNC3(crp->cr_lcd_device, FB_BLANK_UNBLANK);

	FUNC12(pdev, crp);

	return 0;
}