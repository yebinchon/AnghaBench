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
typedef  int /*<<< orphan*/  u32 ;
struct gbphy_device {int dummy; } ;
struct gb_pwm_config_request {void* period; void* duty; scalar_t__ which; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct gb_pwm_chip {scalar_t__ pwm_max; int /*<<< orphan*/  connection; TYPE_1__ chip; } ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GB_PWM_TYPE_CONFIG ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_pwm_config_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gbphy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct gbphy_device*) ; 
 struct gbphy_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gb_pwm_chip *pwmc,
				   u8 which, u32 duty, u32 period)
{
	struct gb_pwm_config_request request;
	struct gbphy_device *gbphy_dev;
	int ret;

	if (which > pwmc->pwm_max)
		return -EINVAL;

	request.which = which;
	request.duty = FUNC0(duty);
	request.period = FUNC0(period);

	gbphy_dev = FUNC4(pwmc->chip.dev);
	ret = FUNC2(gbphy_dev);
	if (ret)
		return ret;

	ret = FUNC1(pwmc->connection, GB_PWM_TYPE_CONFIG,
				&request, sizeof(request), NULL, 0);

	FUNC3(gbphy_dev);

	return ret;
}