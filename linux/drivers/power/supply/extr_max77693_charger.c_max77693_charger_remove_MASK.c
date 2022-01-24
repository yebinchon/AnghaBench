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
struct max77693_charger {int /*<<< orphan*/  charger; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_fast_charge_timer ; 
 int /*<<< orphan*/  dev_attr_top_off_threshold_current ; 
 int /*<<< orphan*/  dev_attr_top_off_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct max77693_charger* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct max77693_charger *chg = FUNC1(pdev);

	FUNC0(&pdev->dev, &dev_attr_top_off_timer);
	FUNC0(&pdev->dev, &dev_attr_top_off_threshold_current);
	FUNC0(&pdev->dev, &dev_attr_fast_charge_timer);

	FUNC2(chg->charger);

	return 0;
}