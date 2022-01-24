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
struct regulator_dev {TYPE_1__* constraints; } ;
struct axp20x_dev {int variant; } ;
struct TYPE_2__ {int /*<<< orphan*/  soft_start; } ;

/* Variables and functions */
#define  AXP209_ID 128 
 int AXP20X_LDO3 ; 
 struct axp20x_dev* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (struct regulator_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct regulator_dev *rdev)
{
	struct axp20x_dev *axp20x = FUNC0(rdev);
	int id = FUNC1(rdev);

	switch (axp20x->variant) {
	case AXP209_ID:
		if ((id == AXP20X_LDO3) &&
		    rdev->constraints && rdev->constraints->soft_start) {
			int v_out;
			int ret;

			/*
			 * On some boards, the LDO3 can be overloaded when
			 * turning on, causing the entire PMIC to shutdown
			 * without warning. Turning it on at the minimal voltage
			 * and then setting the voltage to the requested value
			 * works reliably.
			 */
			if (FUNC4(rdev))
				break;

			v_out = FUNC3(rdev);
			if (v_out < 0)
				return v_out;

			if (v_out == 0)
				break;

			ret = FUNC5(rdev, 0x00);
			/*
			 * A small pause is needed between
			 * setting the voltage and enabling the LDO to give the
			 * internal state machine time to process the request.
			 */
			FUNC6(1000, 5000);
			ret |= FUNC2(rdev);
			ret |= FUNC5(rdev, v_out);

			return ret;
		}
		break;
	default:
		/* No quirks */
		break;
	}

	return FUNC2(rdev);
}