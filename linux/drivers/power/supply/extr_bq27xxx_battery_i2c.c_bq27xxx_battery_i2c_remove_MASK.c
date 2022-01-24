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
struct i2c_client {int dummy; } ;
struct bq27xxx_device_info {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  battery_id ; 
 int /*<<< orphan*/  battery_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct bq27xxx_device_info*) ; 
 struct bq27xxx_device_info* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct bq27xxx_device_info *di = FUNC1(client);

	FUNC0(di);

	FUNC3(&battery_mutex);
	FUNC2(&battery_id, di->id);
	FUNC4(&battery_mutex);

	return 0;
}