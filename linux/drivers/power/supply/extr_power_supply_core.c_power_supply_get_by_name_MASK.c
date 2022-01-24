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
struct power_supply {int /*<<< orphan*/  use_cnt; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 struct power_supply* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  power_supply_class ; 
 int /*<<< orphan*/  power_supply_match_device_by_name ; 

struct power_supply *FUNC3(const char *name)
{
	struct power_supply *psy = NULL;
	struct device *dev = FUNC1(power_supply_class, NULL, name,
					power_supply_match_device_by_name);

	if (dev) {
		psy = FUNC2(dev);
		FUNC0(&psy->use_cnt);
	}

	return psy;
}