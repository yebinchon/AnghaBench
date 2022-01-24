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
struct spmi_regulator {int /*<<< orphan*/  slew_rate; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct spmi_regulator* FUNC2 (struct regulator_dev*) ; 
 scalar_t__ FUNC3 (struct regulator_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
		unsigned int old_selector, unsigned int new_selector)
{
	struct spmi_regulator *vreg = FUNC2(rdev);
	int diff_uV;

	diff_uV = FUNC1(FUNC3(rdev, new_selector) -
		      FUNC3(rdev, old_selector));

	return FUNC0(diff_uV, vreg->slew_rate);
}