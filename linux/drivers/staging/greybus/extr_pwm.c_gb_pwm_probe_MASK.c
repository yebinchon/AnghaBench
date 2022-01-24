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
struct pwm_chip {int base; scalar_t__ npwm; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int /*<<< orphan*/  dev; TYPE_1__* cport_desc; int /*<<< orphan*/  bundle; } ;
struct gb_pwm_chip {scalar_t__ pwm_max; struct pwm_chip chip; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct gb_connection* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_connection*) ; 
 int FUNC6 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*,struct gb_pwm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct gbphy_device*,struct gb_pwm_chip*) ; 
 int FUNC9 (struct gb_pwm_chip*) ; 
 int /*<<< orphan*/  gb_pwm_ops ; 
 int /*<<< orphan*/  FUNC10 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct gb_pwm_chip*) ; 
 struct gb_pwm_chip* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC15(struct gbphy_device *gbphy_dev,
			const struct gbphy_device_id *id)
{
	struct gb_connection *connection;
	struct gb_pwm_chip *pwmc;
	struct pwm_chip *pwm;
	int ret;

	pwmc = FUNC12(sizeof(*pwmc), GFP_KERNEL);
	if (!pwmc)
		return -ENOMEM;

	connection = FUNC3(gbphy_dev->bundle,
					  FUNC13(gbphy_dev->cport_desc->id),
					  NULL);
	if (FUNC0(connection)) {
		ret = FUNC1(connection);
		goto exit_pwmc_free;
	}

	pwmc->connection = connection;
	FUNC7(connection, pwmc);
	FUNC8(gbphy_dev, pwmc);

	ret = FUNC6(connection);
	if (ret)
		goto exit_connection_destroy;

	/* Query number of pwms present */
	ret = FUNC9(pwmc);
	if (ret)
		goto exit_connection_disable;

	pwm = &pwmc->chip;

	pwm->dev = &gbphy_dev->dev;
	pwm->ops = &gb_pwm_ops;
	pwm->base = -1;			/* Allocate base dynamically */
	pwm->npwm = pwmc->pwm_max + 1;

	ret = FUNC14(pwm);
	if (ret) {
		FUNC2(&gbphy_dev->dev,
			"failed to register PWM: %d\n", ret);
		goto exit_connection_disable;
	}

	FUNC10(gbphy_dev);
	return 0;

exit_connection_disable:
	FUNC5(connection);
exit_connection_destroy:
	FUNC4(connection);
exit_pwmc_free:
	FUNC11(pwmc);
	return ret;
}