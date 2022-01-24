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
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct platform_device {size_t id; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct regulator_dev* FUNC0 (struct platform_device*) ; 
 struct wm8350* FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wm8350*,int /*<<< orphan*/ ,struct regulator_dev*) ; 
 TYPE_1__* wm8350_reg ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct regulator_dev *rdev = FUNC0(pdev);
	struct wm8350 *wm8350 = FUNC1(rdev);

	FUNC2(wm8350, wm8350_reg[pdev->id].irq, rdev);

	return 0;
}