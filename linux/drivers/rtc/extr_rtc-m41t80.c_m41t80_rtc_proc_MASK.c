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
struct seq_file {int dummy; } ;
struct m41t80_data {int features; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int M41T80_FEATURE_BL ; 
 int M41T80_FLAGS_BATT_LOW ; 
 int /*<<< orphan*/  M41T80_REG_FLAGS ; 
 struct m41t80_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct seq_file *seq)
{
	struct i2c_client *client = FUNC3(dev);
	struct m41t80_data *clientdata = FUNC0(client);
	int reg;

	if (clientdata->features & M41T80_FEATURE_BL) {
		reg = FUNC1(client, M41T80_REG_FLAGS);
		if (reg < 0)
			return reg;
		FUNC2(seq, "battery\t\t: %s\n",
			   (reg & M41T80_FLAGS_BATT_LOW) ? "exhausted" : "ok");
	}
	return 0;
}