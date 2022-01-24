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
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; TYPE_3__* swcfg; int /*<<< orphan*/  hwmon_mtx; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDT_SW_TMPCTL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  idt_temp_groups ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct idt_ntb_dev *ndev)
{
	struct device *hwmon;

	/* Enable sensor if it hasn't been already */
	FUNC4(ndev, IDT_SW_TMPCTL, 0x0);

	/* Initialize hwmon interface fields */
	FUNC5(&ndev->hwmon_mtx);

	hwmon = FUNC3(&ndev->ntb.pdev->dev,
		ndev->swcfg->name, ndev, idt_temp_groups);
	if (FUNC0(hwmon)) {
		FUNC2(&ndev->ntb.pdev->dev, "Couldn't create hwmon device");
		return;
	}

	FUNC1(&ndev->ntb.pdev->dev, "Temperature HWmon interface registered");
}