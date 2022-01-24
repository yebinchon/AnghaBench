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
typedef  scalar_t__ u8 ;
struct gbphy_device {int dummy; } ;
struct gb_pwm_disable_request {scalar_t__ which; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct gb_pwm_chip {scalar_t__ pwm_max; TYPE_1__ chip; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GB_PWM_TYPE_DISABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_pwm_disable_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gbphy_device*) ; 
 struct gbphy_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gb_pwm_chip *pwmc,
				    u8 which)
{
	struct gb_pwm_disable_request request;
	struct gbphy_device *gbphy_dev;
	int ret;

	if (which > pwmc->pwm_max)
		return -EINVAL;

	request.which = which;

	ret = FUNC0(pwmc->connection, GB_PWM_TYPE_DISABLE,
				&request, sizeof(request), NULL, 0);

	gbphy_dev = FUNC2(pwmc->chip.dev);
	FUNC1(gbphy_dev);

	return ret;
}