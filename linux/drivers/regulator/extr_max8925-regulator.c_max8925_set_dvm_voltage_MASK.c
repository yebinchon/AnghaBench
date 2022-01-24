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
struct max8925_regulator_info {int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 unsigned char FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 unsigned char SD1_DVM_SHIFT ; 
 int /*<<< orphan*/  SD1_DVM_STEP ; 
 int SD1_DVM_VMAX ; 
 int SD1_DVM_VMIN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 
 struct max8925_regulator_info* FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, int uV)
{
	struct max8925_regulator_info *info = FUNC2(rdev);
	unsigned char data, mask;

	if (uV < SD1_DVM_VMIN || uV > SD1_DVM_VMAX)
		return -EINVAL;

	data = FUNC0(uV - SD1_DVM_VMIN, SD1_DVM_STEP);
	data <<= SD1_DVM_SHIFT;
	mask = 3 << SD1_DVM_SHIFT;

	return FUNC1(info->i2c, info->enable_reg, mask, data);
}