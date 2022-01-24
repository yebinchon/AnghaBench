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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
#define  TPS65910_REG_VDD1 130 
#define  TPS65910_REG_VDD2 129 
#define  TPS65911_REG_VDDCTRL 128 
 unsigned int VDD1_2_MIN_VOLT ; 
 unsigned int VDD1_2_NUM_VOLT_FINE ; 
 unsigned int VDD1_2_OFFSET ; 
 unsigned int VDDCTRL_MIN_VOLT ; 
 unsigned int VDDCTRL_OFFSET ; 
 int FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *dev,
					unsigned selector)
{
	int volt, mult = 1, id = FUNC1(dev);

	switch (id) {
	case TPS65910_REG_VDD1:
	case TPS65910_REG_VDD2:
		mult = (selector / VDD1_2_NUM_VOLT_FINE) + 1;
		volt = VDD1_2_MIN_VOLT +
			(selector % VDD1_2_NUM_VOLT_FINE) * VDD1_2_OFFSET;
		break;
	case TPS65911_REG_VDDCTRL:
		volt = VDDCTRL_MIN_VOLT + (selector * VDDCTRL_OFFSET);
		break;
	default:
		FUNC0();
		return -EINVAL;
	}

	return  volt * 100 * mult;
}