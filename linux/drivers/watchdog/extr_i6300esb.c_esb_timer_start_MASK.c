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
struct watchdog_device {int /*<<< orphan*/  status; } ;
struct esb_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESB_LOCK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct esb_dev*) ; 
 int ESB_WDT_ENABLE ; 
 int ESB_WDT_LOCK ; 
 int /*<<< orphan*/  ESB_WDT_RELOAD ; 
 int /*<<< orphan*/  WDOG_NO_WAY_OUT ; 
 int /*<<< orphan*/  FUNC1 (struct esb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct esb_dev* FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdd)
{
	struct esb_dev *edev = FUNC4(wdd);
	int _wdd_nowayout = FUNC3(WDOG_NO_WAY_OUT, &wdd->status);
	u8 val;

	FUNC1(edev);
	FUNC5(ESB_WDT_RELOAD, FUNC0(edev));
	/* Enable or Enable + Lock? */
	val = ESB_WDT_ENABLE | (_wdd_nowayout ? ESB_WDT_LOCK : 0x00);
	FUNC2(edev->pdev, ESB_LOCK_REG, val);
	return 0;
}