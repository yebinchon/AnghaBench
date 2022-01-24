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
struct qpnp_tm_chip {int temp; int /*<<< orphan*/  adc; int /*<<< orphan*/  lock; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int DEFAULT_TEMP ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qpnp_tm_chip*) ; 

__attribute__((used)) static int FUNC4(void *data, int *temp)
{
	struct qpnp_tm_chip *chip = data;
	int ret, mili_celsius;

	if (!temp)
		return -EINVAL;

	if (!chip->initialized) {
		*temp = DEFAULT_TEMP;
		return 0;
	}

	if (!chip->adc) {
		FUNC1(&chip->lock);
		ret = FUNC3(chip);
		FUNC2(&chip->lock);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC0(chip->adc, &mili_celsius);
		if (ret < 0)
			return ret;

		chip->temp = mili_celsius;
	}

	*temp = chip->temp < 0 ? 0 : chip->temp;

	return 0;
}