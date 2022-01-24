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
struct da9063 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9063_REG_CONTROL_F ; 
 int /*<<< orphan*/  DA9063_WATCHDOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da9063* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct da9063 *da9063 = FUNC2(wdd);
	int ret;

	ret = FUNC1(da9063->regmap, DA9063_REG_CONTROL_F,
			   DA9063_WATCHDOG);
	if (ret)
		FUNC0(da9063->dev, "Failed to ping the watchdog (err = %d)\n",
			  ret);

	return ret;
}