#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/  adapter_enable_int; } ;
struct aac_dev {TYPE_2__* pdev; scalar_t__ msi_enabled; scalar_t__ sa_firmware; TYPE_1__ a_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  OMR; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int HW_IOP_RESET ; 
 int HW_SOFT_RESET ; 
 int KERNEL_PANIC ; 
 TYPE_3__ MUnit ; 
 int FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  aac_src_disable_interrupt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int startup_timeout ; 

__attribute__((used)) static int FUNC6(struct aac_dev *dev, int bled, u8 reset_type)
{
	bool is_ctrl_up;
	int ret = 0;

	if (bled < 0)
		goto invalid_out;

	if (bled)
		FUNC3(&dev->pdev->dev, "adapter kernel panic'd %x.\n", bled);

	/*
	 * When there is a BlinkLED, IOP_RESET has not effect
	 */
	if (bled >= 2 && dev->sa_firmware && reset_type & HW_IOP_RESET)
		reset_type &= ~HW_IOP_RESET;

	dev->a_ops.adapter_enable_int = aac_src_disable_interrupt;

	FUNC3(&dev->pdev->dev, "Controller reset type is %d\n", reset_type);

	if (reset_type & HW_IOP_RESET) {
		FUNC4(&dev->pdev->dev, "Issuing IOP reset\n");
		FUNC2(dev);

		/*
		 * Creates a delay or wait till up and running comes thru
		 */
		is_ctrl_up = FUNC0(dev);
		if (!is_ctrl_up)
			FUNC3(&dev->pdev->dev, "IOP reset failed\n");
		else {
			FUNC4(&dev->pdev->dev, "IOP reset succeeded\n");
			goto set_startup;
		}
	}

	if (!dev->sa_firmware) {
		FUNC3(&dev->pdev->dev, "ARC Reset attempt failed\n");
		ret = -ENODEV;
		goto out;
	}

	if (reset_type & HW_SOFT_RESET) {
		FUNC4(&dev->pdev->dev, "Issuing SOFT reset\n");
		FUNC1(dev);
		dev->msi_enabled = 0;

		is_ctrl_up = FUNC0(dev);
		if (!is_ctrl_up) {
			FUNC3(&dev->pdev->dev, "SOFT reset failed\n");
			ret = -ENODEV;
			goto out;
		} else
			FUNC4(&dev->pdev->dev, "SOFT reset succeeded\n");
	}

set_startup:
	if (startup_timeout < 300)
		startup_timeout = 300;

out:
	return ret;

invalid_out:
	if (FUNC5(dev, MUnit.OMR) & KERNEL_PANIC)
		ret = -ENODEV;
goto out;
}