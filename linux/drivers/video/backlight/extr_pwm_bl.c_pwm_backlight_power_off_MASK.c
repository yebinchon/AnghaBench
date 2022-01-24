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
struct pwm_state {int enabled; scalar_t__ duty_cycle; } ;
struct pwm_bl_data {int enabled; int /*<<< orphan*/  power_supply; int /*<<< orphan*/  pwm; scalar_t__ pwm_off_delay; scalar_t__ enable_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pwm_bl_data *pb)
{
	struct pwm_state state;

	FUNC3(pb->pwm, &state);
	if (!pb->enabled)
		return;

	if (pb->enable_gpio)
		FUNC0(pb->enable_gpio, 0);

	if (pb->pwm_off_delay)
		FUNC1(pb->pwm_off_delay);

	state.enabled = false;
	state.duty_cycle = 0;
	FUNC2(pb->pwm, &state);

	FUNC4(pb->power_supply);
	pb->enabled = false;
}