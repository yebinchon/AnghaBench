#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  write; TYPE_1__* dev; } ;
struct pm8916_pon {long reason_shift; TYPE_3__ reboot_mode; int /*<<< orphan*/  baseaddr; int /*<<< orphan*/  regmap; TYPE_1__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pm8916_pon* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct pm8916_pon*) ; 
 int /*<<< orphan*/  pm8916_reboot_mode_write ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct pm8916_pon *pon;
	int error;

	pon = FUNC2(&pdev->dev, sizeof(*pon), GFP_KERNEL);
	if (!pon)
		return -ENOMEM;

	pon->dev = &pdev->dev;

	pon->regmap = FUNC1(pdev->dev.parent, NULL);
	if (!pon->regmap) {
		FUNC0(&pdev->dev, "failed to locate regmap\n");
		return -ENODEV;
	}

	error = FUNC6(pdev->dev.of_node, "reg",
				     &pon->baseaddr);
	if (error)
		return error;

	pon->reboot_mode.dev = &pdev->dev;
	pon->reason_shift = (long)FUNC5(&pdev->dev);
	pon->reboot_mode.write = pm8916_reboot_mode_write;
	error = FUNC4(&pdev->dev, &pon->reboot_mode);
	if (error) {
		FUNC0(&pdev->dev, "can't register reboot mode\n");
		return error;
	}

	FUNC7(pdev, pon);

	return FUNC3(&pdev->dev);
}