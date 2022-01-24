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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SBSM_RETRY_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, u8 address)
{
	int reg, retries;

	for (retries = SBSM_RETRY_CNT; retries > 0; retries--) {
		reg = FUNC1(client, address);
		if (reg >= 0)
			break;
	}

	if (reg < 0) {
		FUNC0(&client->dev, "failed to read register 0x%02x\n",
			address);
	}

	return reg;
}