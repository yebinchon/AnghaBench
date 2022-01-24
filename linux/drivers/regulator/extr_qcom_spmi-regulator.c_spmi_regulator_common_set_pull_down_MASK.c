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
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 unsigned int SPMI_COMMON_PULL_DOWN_ENABLE_MASK ; 
 int /*<<< orphan*/  SPMI_COMMON_REG_PULL_DOWN ; 
 struct spmi_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct spmi_regulator*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct spmi_regulator *vreg = FUNC0(rdev);
	unsigned int mask = SPMI_COMMON_PULL_DOWN_ENABLE_MASK;

	return FUNC1(vreg, SPMI_COMMON_REG_PULL_DOWN,
				     mask, mask);
}