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
struct da9063 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct da9063*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct da9063* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct da9063 *da9063 = FUNC2(wdd);
	int ret;

	ret = FUNC0(da9063);
	if (ret)
		FUNC1(da9063->dev, "Watchdog failed to stop (err = %d)\n",
			  ret);

	return ret;
}