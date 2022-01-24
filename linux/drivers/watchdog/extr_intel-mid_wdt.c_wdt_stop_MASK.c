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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCU_WATCHDOG_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct device* FUNC1 (struct watchdog_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wd)
{
	struct device *dev = FUNC1(wd);
	int ret;

	ret = FUNC2(SCU_WATCHDOG_STOP, NULL, 0);
	if (ret)
		FUNC0(dev, "Error stopping watchdog: %d\n", ret);

	return ret;
}