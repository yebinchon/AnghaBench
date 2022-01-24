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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct ep93xxbl {int /*<<< orphan*/  mmio; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EP93XX_DEF_BRIGHT ; 
 int /*<<< orphan*/  EP93XX_MAX_BRIGHT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ep93xxbl*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ep93xxbl* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ep93xxbl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct ep93xxbl *ep93xxbl;
	struct backlight_device *bl;
	struct backlight_properties props;
	struct resource *res;

	ep93xxbl = FUNC4(&dev->dev, sizeof(*ep93xxbl), GFP_KERNEL);
	if (!ep93xxbl)
		return -ENOMEM;

	res = FUNC7(dev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENXIO;

	/*
	 * FIXME - We don't do a request_mem_region here because we are
	 * sharing the register space with the framebuffer driver (see
	 * drivers/video/ep93xx-fb.c) and doing so will cause the second
	 * loaded driver to return -EBUSY.
	 *
	 * NOTE: No locking is required; the framebuffer does not touch
	 * this register.
	 */
	ep93xxbl->mmio = FUNC3(&dev->dev, res->start,
				      FUNC9(res));
	if (!ep93xxbl->mmio)
		return -ENXIO;

	FUNC6(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = EP93XX_MAX_BRIGHT;
	bl = FUNC2(&dev->dev, dev->name, &dev->dev,
					ep93xxbl, &ep93xxbl_ops, &props);
	if (FUNC0(bl))
		return FUNC1(bl);

	bl->props.brightness = EP93XX_DEF_BRIGHT;

	FUNC8(dev, bl);

	FUNC5(bl);

	return 0;
}