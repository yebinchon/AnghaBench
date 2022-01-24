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
struct gb_power_supply {int registered; int /*<<< orphan*/  work; int /*<<< orphan*/  update_interval; int /*<<< orphan*/  supply_lock; int /*<<< orphan*/  name; int /*<<< orphan*/  model_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct gb_power_supply*) ; 
 int /*<<< orphan*/  gb_power_supply_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_interval_init ; 

__attribute__((used)) static int FUNC5(struct gb_power_supply *gbpsy)
{
	int ret;

	/* guarantee that we have an unique name, before register */
	ret =  FUNC1(gbpsy->model_name, gbpsy->name,
					  sizeof(gbpsy->name));
	if (ret < 0)
		return ret;

	FUNC3(&gbpsy->supply_lock);

	ret = FUNC2(gbpsy);
	if (ret < 0)
		return ret;

	gbpsy->update_interval = update_interval_init;
	FUNC0(&gbpsy->work, gb_power_supply_work);
	FUNC4(&gbpsy->work, 0);

	/* everything went fine, mark it for release code to know */
	gbpsy->registered = true;

	return 0;
}