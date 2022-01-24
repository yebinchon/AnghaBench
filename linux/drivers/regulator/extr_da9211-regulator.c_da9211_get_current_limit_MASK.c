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
struct da9211 {int chip_id; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
#define  DA9211 130 
 int /*<<< orphan*/  DA9211_REG_BUCK_ILIM ; 
#define  DA9213 129 
#define  DA9215 128 
 int EINVAL ; 
 int* da9211_current_limits ; 
 int* da9213_current_limits ; 
 int* da9215_current_limits ; 
 struct da9211* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	int id = FUNC1(rdev);
	struct da9211 *chip = FUNC0(rdev);
	unsigned int data;
	int ret;
	const int *current_limits;

	switch (chip->chip_id) {
	case DA9211:
		current_limits = da9211_current_limits;
		break;
	case DA9213:
		current_limits = da9213_current_limits;
		break;
	case DA9215:
		current_limits = da9215_current_limits;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC2(chip->regmap, DA9211_REG_BUCK_ILIM, &data);
	if (ret < 0)
		return ret;

	/* select one of 16 values: 0000 (2000mA or 3000mA)
	 * to 1111 (5000mA or 6000mA).
	 */
	data = (data >> id*4) & 0x0F;
	return current_limits[data];
}