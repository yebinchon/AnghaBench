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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC3(void *client, u8 reg, u8 *data)
{
	struct i2c_client *cl = client;
	int ret;

	ret = FUNC2(cl, reg);
	if (ret < 0) {
		FUNC0(&cl->dev, "I2C fail to select reg\n");
		return ret;
	}

	ret = FUNC1(client);
	if (ret < 0) {
		FUNC0(&cl->dev, "I2C read error\n");
		return ret;
	}

	*data = ret;

	return 0;
}