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
typedef  unsigned int u32 ;
struct watchdog_device {unsigned int timeout; } ;
struct esb_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esb_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct esb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct esb_dev*) ; 
 int /*<<< orphan*/  ESB_WDT_RELOAD ; 
 int /*<<< orphan*/  FUNC3 (struct esb_dev*) ; 
 struct esb_dev* FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdd,
		unsigned int time)
{
	struct esb_dev *edev = FUNC4(wdd);
	u32 val;

	/* We shift by 9, so if we are passed a value of 1 sec,
	 * val will be 1 << 9 = 512, then write that to two
	 * timers => 2 * 512 = 1024 (which is decremented at 1KHz)
	 */
	val = time << 9;

	/* Write timer 1 */
	FUNC3(edev);
	FUNC5(val, FUNC1(edev));

	/* Write timer 2 */
	FUNC3(edev);
	FUNC5(val, FUNC2(edev));

	/* Reload */
	FUNC3(edev);
	FUNC6(ESB_WDT_RELOAD, FUNC0(edev));

	/* FIXME: Do we need to flush everything out? */

	/* Done */
	wdd->timeout = time;
	return 0;
}