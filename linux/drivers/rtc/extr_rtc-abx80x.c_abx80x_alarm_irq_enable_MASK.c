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
struct device {int dummy; } ;

/* Variables and functions */
 int ABX8XX_IRQ_AIE ; 
 int ABX8XX_IRQ_IM_1_4 ; 
 int /*<<< orphan*/  ABX8XX_REG_IRQ ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int enabled)
{
	struct i2c_client *client = FUNC1(dev);
	int err;

	if (enabled)
		err = FUNC0(client, ABX8XX_REG_IRQ,
						(ABX8XX_IRQ_IM_1_4 |
						 ABX8XX_IRQ_AIE));
	else
		err = FUNC0(client, ABX8XX_REG_IRQ,
						ABX8XX_IRQ_IM_1_4);
	return err;
}