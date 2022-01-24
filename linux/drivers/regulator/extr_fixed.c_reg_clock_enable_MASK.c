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
struct regulator_dev {int dummy; } ;
struct fixed_voltage_data {int /*<<< orphan*/  clk_enable_counter; int /*<<< orphan*/  enable_clock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct fixed_voltage_data* FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct fixed_voltage_data *priv = FUNC1(rdev);
	int ret = 0;

	ret = FUNC0(priv->enable_clock);
	if (ret)
		return ret;

	priv->clk_enable_counter++;

	return ret;
}