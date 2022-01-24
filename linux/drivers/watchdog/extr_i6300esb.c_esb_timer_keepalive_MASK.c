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
struct watchdog_device {int dummy; } ;
struct esb_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esb_dev*) ; 
 int /*<<< orphan*/  ESB_WDT_RELOAD ; 
 int /*<<< orphan*/  FUNC1 (struct esb_dev*) ; 
 struct esb_dev* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct esb_dev *edev = FUNC2(wdd);

	FUNC1(edev);
	FUNC3(ESB_WDT_RELOAD, FUNC0(edev));
	/* FIXME: Do we need to flush anything here? */
	return 0;
}