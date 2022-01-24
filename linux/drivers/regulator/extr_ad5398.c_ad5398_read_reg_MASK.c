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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, unsigned short *data)
{
	unsigned short val;
	int ret;

	ret = FUNC2(client, (char *)&val, 2);
	if (ret < 0) {
		FUNC1(&client->dev, "I2C read error\n");
		return ret;
	}
	*data = FUNC0(val);

	return ret;
}