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
struct pwm_device {TYPE_1__* chip; } ;
struct device_link {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_FLAG_AUTOREMOVE_CONSUMER ; 
 int /*<<< orphan*/  EINVAL ; 
 struct device_link* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct device_link* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device_link *FUNC5(struct device *dev,
					       struct pwm_device *pwm)
{
	struct device_link *dl;

	if (!dev) {
		/*
		 * No device for the PWM consumer has been provided. It may
		 * impact the PM sequence ordering: the PWM supplier may get
		 * suspended before the consumer.
		 */
		FUNC3(pwm->chip->dev,
			 "No consumer device specified to create a link to\n");
		return NULL;
	}

	dl = FUNC4(dev, pwm->chip->dev, DL_FLAG_AUTOREMOVE_CONSUMER);
	if (!dl) {
		FUNC1(dev, "failed to create device link to %s\n",
			FUNC2(pwm->chip->dev));
		return FUNC0(-EINVAL);
	}

	return dl;
}