#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tps65090_regulator {int overcurrent_wait; } ;
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_reg; } ;

/* Variables and functions */
 int CTRL_WT_BIT ; 
 int MAX_OVERCURRENT_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct tps65090_regulator *ri,
					     struct regulator_dev *rdev)
{
	int ret;

	ret = FUNC1(rdev->regmap, rdev->desc->enable_reg,
				 MAX_OVERCURRENT_WAIT << CTRL_WT_BIT,
				 ri->overcurrent_wait << CTRL_WT_BIT);
	if (ret) {
		FUNC0(&rdev->dev, "Error updating overcurrent wait %#x\n",
			rdev->desc->enable_reg);
	}

	return ret;
}