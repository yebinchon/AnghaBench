#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bcma_hcd_device {int /*<<< orphan*/  gpio_desc; struct bcma_device* core; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct bcma_device {TYPE_1__ id; TYPE_2__ dev; } ;

/* Variables and functions */
#define  BCMA_CORE_NS_USB20 130 
#define  BCMA_CORE_NS_USB30 129 
#define  BCMA_CORE_USB20_HOST 128 
 int /*<<< orphan*/  CONFIG_ARM ; 
 int /*<<< orphan*/  CONFIG_MIPS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bcma_hcd_device*) ; 
 int FUNC2 (struct bcma_hcd_device*) ; 
 int FUNC3 (struct bcma_hcd_device*) ; 
 int FUNC4 (struct bcma_hcd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_device*,struct bcma_hcd_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct bcma_hcd_device* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct bcma_device *core)
{
	int err;
	struct bcma_hcd_device *usb_dev;

	/* TODO: Probably need checks here; is the core connected? */

	usb_dev = FUNC7(&core->dev, sizeof(struct bcma_hcd_device),
			       GFP_KERNEL);
	if (!usb_dev)
		return -ENOMEM;
	usb_dev->core = core;

	if (core->dev.of_node)
		usb_dev->gpio_desc = FUNC6(&core->dev, "vcc",
						    GPIOD_OUT_HIGH);

	switch (core->id.id) {
	case BCMA_CORE_USB20_HOST:
		if (FUNC0(CONFIG_ARM))
			err = FUNC3(usb_dev);
		else if (FUNC0(CONFIG_MIPS))
			err = FUNC1(usb_dev);
		else
			err = -ENOTSUPP;
		break;
	case BCMA_CORE_NS_USB20:
		err = FUNC2(usb_dev);
		break;
	case BCMA_CORE_NS_USB30:
		err = FUNC4(usb_dev);
		break;
	default:
		return -ENODEV;
	}
	if (err)
		return err;

	FUNC5(core, usb_dev);
	return 0;
}