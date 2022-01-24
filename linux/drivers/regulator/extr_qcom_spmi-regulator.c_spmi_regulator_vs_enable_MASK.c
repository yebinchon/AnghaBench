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
struct spmi_regulator {int /*<<< orphan*/  vs_enable_time; scalar_t__ ocp_count; scalar_t__ ocp_irq; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct spmi_regulator* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct spmi_regulator *vreg = FUNC1(rdev);

	if (vreg->ocp_irq) {
		vreg->ocp_count = 0;
		vreg->vs_enable_time = FUNC0();
	}

	return FUNC2(rdev);
}