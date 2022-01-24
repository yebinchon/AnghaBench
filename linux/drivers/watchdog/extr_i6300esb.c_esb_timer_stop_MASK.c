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
typedef  int u8 ;
struct watchdog_device {int dummy; } ;
struct esb_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESB_LOCK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct esb_dev*) ; 
 int ESB_WDT_ENABLE ; 
 int /*<<< orphan*/  ESB_WDT_RELOAD ; 
 int /*<<< orphan*/  FUNC1 (struct esb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct esb_dev* FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdd)
{
	struct esb_dev *edev = FUNC4(wdd);
	u8 val;

	/* First, reset timers as suggested by the docs */
	FUNC1(edev);
	FUNC5(ESB_WDT_RELOAD, FUNC0(edev));
	/* Then disable the WDT */
	FUNC3(edev->pdev, ESB_LOCK_REG, 0x0);
	FUNC2(edev->pdev, ESB_LOCK_REG, &val);

	/* Returns 0 if the timer was disabled, non-zero otherwise */
	return val & ESB_WDT_ENABLE;
}