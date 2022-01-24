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
typedef  int u8 ;
struct regulator_dev {int dummy; } ;
struct max1586_data {unsigned int v3_curr_sel; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int I2C_V3_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 struct max1586_data* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
				      unsigned selector)
{
	struct max1586_data *max1586 = FUNC2(rdev);
	struct i2c_client *client = max1586->client;
	int ret;
	u8 v3_prog;

	FUNC0(&client->dev, "changing voltage v3 to %dmv\n",
		FUNC3(rdev, selector) / 1000);

	v3_prog = I2C_V3_SELECT | (u8) selector;
	ret = FUNC1(client, v3_prog);
	if (ret)
		return ret;

	max1586->v3_curr_sel = selector;

	return 0;
}