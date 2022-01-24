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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct debugfs_regset32 {int /*<<< orphan*/  base; int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; } ;
struct bcm2835_thermal_data {int /*<<< orphan*/  debugfsdir; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bcm2835_thermal_regs ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct debugfs_regset32*) ; 
 struct debugfs_regset32* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct bcm2835_thermal_data* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	struct bcm2835_thermal_data *data = FUNC4(pdev);
	struct debugfs_regset32 *regset;

	data->debugfsdir = FUNC1("bcm2835_thermal", NULL);

	regset = FUNC3(&pdev->dev, sizeof(*regset), GFP_KERNEL);
	if (!regset)
		return;

	regset->regs = bcm2835_thermal_regs;
	regset->nregs = FUNC0(bcm2835_thermal_regs);
	regset->base = data->regs;

	FUNC2("regset", 0444, data->debugfsdir, regset);
}