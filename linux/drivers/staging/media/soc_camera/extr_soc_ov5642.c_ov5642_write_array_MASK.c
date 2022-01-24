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
struct regval_list {int reg_num; int value; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
				struct regval_list *vals)
{
	while (vals->reg_num != 0xffff || vals->value != 0xff) {
		int ret = FUNC1(client, vals->reg_num, vals->value);
		if (ret < 0)
			return ret;
		vals++;
	}
	FUNC0(&client->dev, "Register list loaded\n");
	return 0;
}