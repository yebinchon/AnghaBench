#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int polarity; } ;
struct pwm_device {unsigned int pwm; unsigned int hwpwm; TYPE_1__ state; struct pwm_chip* chip; } ;
struct pwm_chip {unsigned int npwm; int base; int /*<<< orphan*/  list; TYPE_2__* ops; struct pwm_device* pwms; int /*<<< orphan*/  dev; } ;
typedef  enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_state ) (struct pwm_chip*,struct pwm_device*,TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  allocated_pwms ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct pwm_device* FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pwm_chip*) ; 
 int /*<<< orphan*/  pwm_chips ; 
 int /*<<< orphan*/  pwm_lock ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  pwm_tree ; 
 int /*<<< orphan*/  FUNC10 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct pwm_chip*,struct pwm_device*,TYPE_1__*) ; 

int FUNC13(struct pwm_chip *chip,
			      enum pwm_polarity polarity)
{
	struct pwm_device *pwm;
	unsigned int i;
	int ret;

	if (!chip || !chip->dev || !chip->ops || !chip->npwm)
		return -EINVAL;

	if (!FUNC9(chip->ops))
		return -EINVAL;

	FUNC6(&pwm_lock);

	ret = FUNC2(chip->base, chip->npwm);
	if (ret < 0)
		goto out;

	chip->pwms = FUNC4(chip->npwm, sizeof(*pwm), GFP_KERNEL);
	if (!chip->pwms) {
		ret = -ENOMEM;
		goto out;
	}

	chip->base = ret;

	for (i = 0; i < chip->npwm; i++) {
		pwm = &chip->pwms[i];

		pwm->chip = chip;
		pwm->pwm = chip->base + i;
		pwm->hwpwm = i;
		pwm->state.polarity = polarity;

		if (chip->ops->get_state)
			chip->ops->get_state(chip, pwm, &pwm->state);

		FUNC11(&pwm_tree, pwm->pwm, pwm);
	}

	FUNC3(allocated_pwms, chip->base, chip->npwm);

	FUNC0(&chip->list);
	FUNC5(&chip->list, &pwm_chips);

	ret = 0;

	if (FUNC1(CONFIG_OF))
		FUNC8(chip);

out:
	FUNC7(&pwm_lock);

	if (!ret)
		FUNC10(chip);

	return ret;
}