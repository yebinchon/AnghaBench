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
typedef  int uint8_t ;
struct i2c_client {int dummy; } ;
struct adp8860_bl {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int,int*) ; 
 int FUNC1 (struct i2c_client*,int,int) ; 
 struct adp8860_bl* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int reg, uint8_t bit_mask)
{
	struct adp8860_bl *data = FUNC2(client);
	uint8_t reg_val;
	int ret;

	FUNC3(&data->lock);

	ret = FUNC0(client, reg, &reg_val);

	if (!ret && (reg_val & bit_mask)) {
		reg_val &= ~bit_mask;
		ret = FUNC1(client, reg, reg_val);
	}

	FUNC4(&data->lock);
	return ret;
}