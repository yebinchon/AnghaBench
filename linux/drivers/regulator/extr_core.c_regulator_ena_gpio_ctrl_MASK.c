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
struct regulator_enable_gpio {int enable_count; int /*<<< orphan*/  gpiod; } ;
struct regulator_dev {struct regulator_enable_gpio* ena_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct regulator_dev *rdev, bool enable)
{
	struct regulator_enable_gpio *pin = rdev->ena_pin;

	if (!pin)
		return -EINVAL;

	if (enable) {
		/* Enable GPIO at initial use */
		if (pin->enable_count == 0)
			FUNC0(pin->gpiod, 1);

		pin->enable_count++;
	} else {
		if (pin->enable_count > 1) {
			pin->enable_count--;
			return 0;
		}

		/* Disable GPIO if not used */
		if (pin->enable_count <= 1) {
			FUNC0(pin->gpiod, 0);
			pin->enable_count = 0;
		}
	}

	return 0;
}