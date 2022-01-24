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
struct tps51632_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  TPS51632_SLEW_REGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct tps51632_chip* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev,
		int ramp_delay)
{
	struct tps51632_chip *tps = FUNC3(rdev);
	int bit;
	int ret;

	if (ramp_delay == 0)
		bit = 0;
	else
		bit = FUNC1(ramp_delay, 6000) - 1;

	ret = FUNC4(tps->regmap, TPS51632_SLEW_REGS, FUNC0(bit));
	if (ret < 0)
		FUNC2(tps->dev, "SLEW reg write failed, err %d\n", ret);
	return ret;
}