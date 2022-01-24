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
struct regulator_dev {int dummy; } ;
struct gpio_regulator_data {int nr_states; int nr_gpios; int state; int /*<<< orphan*/ * gpiods; TYPE_1__* states; } ;
struct TYPE_2__ {int value; int gpios; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct gpio_regulator_data* FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *dev,
					int min_uA, int max_uA)
{
	struct gpio_regulator_data *data = FUNC1(dev);
	int ptr, target = 0, state, best_val = 0;

	for (ptr = 0; ptr < data->nr_states; ptr++)
		if (data->states[ptr].value > best_val &&
		    data->states[ptr].value >= min_uA &&
		    data->states[ptr].value <= max_uA) {
			target = data->states[ptr].gpios;
			best_val = data->states[ptr].value;
		}

	if (best_val == 0)
		return -EINVAL;

	for (ptr = 0; ptr < data->nr_gpios; ptr++) {
		state = (target & (1 << ptr)) >> ptr;
		FUNC0(data->gpiods[ptr], state);
	}
	data->state = target;

	return 0;
}