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
struct pwm_state {int enabled; } ;
struct pwm_bl_data {int enabled; scalar_t__ enable_gpio; scalar_t__ post_pwm_on_delay; int /*<<< orphan*/  pwm; int /*<<< orphan*/  dev; int /*<<< orphan*/  power_supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pwm_bl_data *pb)
{
	struct pwm_state state;
	int err;

	FUNC4(pb->pwm, &state);
	if (pb->enabled)
		return;

	err = FUNC5(pb->power_supply);
	if (err < 0)
		FUNC0(pb->dev, "failed to enable power supply\n");

	state.enabled = true;
	FUNC3(pb->pwm, &state);

	if (pb->post_pwm_on_delay)
		FUNC2(pb->post_pwm_on_delay);

	if (pb->enable_gpio)
		FUNC1(pb->enable_gpio, 1);

	pb->enabled = true;
}