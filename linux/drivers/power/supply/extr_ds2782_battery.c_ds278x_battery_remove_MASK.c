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
struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct ds278x_info* name; } ;
struct ds278x_info {int id; TYPE_1__ battery_desc; int /*<<< orphan*/  bat_work; int /*<<< orphan*/  battery; } ;

/* Variables and functions */
 int /*<<< orphan*/  battery_id ; 
 int /*<<< orphan*/  battery_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ds278x_info* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ds278x_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct ds278x_info *info = FUNC1(client);
	int id = info->id;

	FUNC6(info->battery);
	FUNC0(&info->bat_work);
	FUNC3(info->battery_desc.name);
	FUNC3(info);

	FUNC4(&battery_lock);
	FUNC2(&battery_id, id);
	FUNC5(&battery_lock);

	return 0;
}