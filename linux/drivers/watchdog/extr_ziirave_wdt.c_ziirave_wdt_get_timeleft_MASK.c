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
struct watchdog_device {int /*<<< orphan*/  parent; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIIRAVE_WDT_TIME_LEFT ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct watchdog_device *wdd)
{
	struct i2c_client *client = FUNC1(wdd->parent);
	int ret;

	ret = FUNC0(client, ZIIRAVE_WDT_TIME_LEFT);
	if (ret < 0)
		ret = 0;

	return ret;
}