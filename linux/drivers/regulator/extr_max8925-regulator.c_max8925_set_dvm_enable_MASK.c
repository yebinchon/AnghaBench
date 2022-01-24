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
struct max8925_regulator_info {int /*<<< orphan*/  vol_reg; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int SD1_DVM_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct max8925_regulator_info* FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct max8925_regulator_info *info = FUNC1(rdev);

	return FUNC0(info->i2c, info->vol_reg, 1 << SD1_DVM_EN,
				1 << SD1_DVM_EN);
}