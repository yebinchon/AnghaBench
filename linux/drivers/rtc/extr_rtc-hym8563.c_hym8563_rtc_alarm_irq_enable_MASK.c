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
 int /*<<< orphan*/  HYM8563_CTL2 ; 
 int HYM8563_CTL2_AIE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					unsigned int enabled)
{
	struct i2c_client *client = FUNC2(dev);
	int data;

	data = FUNC0(client, HYM8563_CTL2);
	if (data < 0)
		return data;

	if (enabled)
		data |= HYM8563_CTL2_AIE;
	else
		data &= ~HYM8563_CTL2_AIE;

	return FUNC1(client, HYM8563_CTL2, data);
}