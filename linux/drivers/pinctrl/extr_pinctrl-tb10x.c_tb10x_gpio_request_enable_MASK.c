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
struct tb10x_pinfuncgrp {unsigned int mode; int port; int pincnt; unsigned int* pins; scalar_t__ isgpio; } ;
struct tb10x_pinctrl {int pinfuncgrpcnt; int /*<<< orphan*/  mutex; int /*<<< orphan*/  gpios; TYPE_1__* ports; struct tb10x_pinfuncgrp* pingroups; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int mode; scalar_t__ count; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tb10x_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tb10x_pinctrl*,int,int) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctl,
					struct pinctrl_gpio_range *range,
					unsigned pin)
{
	struct tb10x_pinctrl *state = FUNC2(pctl);
	int muxport = -1;
	int muxmode = -1;
	int i;

	FUNC0(&state->mutex);

	/*
	 * Figure out to which port the requested GPIO belongs and how to
	 * configure that port.
	 * This loop also checks for pin conflicts between GPIOs and other
	 * functions.
	 */
	for (i = 0; i < state->pinfuncgrpcnt; i++) {
		const struct tb10x_pinfuncgrp *pfg = &state->pingroups[i];
		unsigned int mode = pfg->mode;
		int j, port = pfg->port;

		/*
		 * Skip pin groups which are always mapped and don't need
		 * to be configured.
		 */
		if (port < 0)
			continue;

		for (j = 0; j < pfg->pincnt; j++) {
			if (pin == pfg->pins[j]) {
				if (pfg->isgpio) {
					/*
					 * Remember the GPIO-only setting of
					 * the port this pin belongs to.
					 */
					muxport = port;
					muxmode = mode;
				} else if (state->ports[port].count
					&& (state->ports[port].mode == mode)) {
					/*
					 * Error: The requested pin is already
					 * used for something else.
					 */
					FUNC1(&state->mutex);
					return -EBUSY;
				}
				break;
			}
		}
	}

	/*
	 * If we haven't returned an error at this point, the GPIO pin is not
	 * used by another function and the GPIO request can be granted:
	 * Register pin as being used as GPIO so we don't allocate it to
	 * another function later.
	 */
	FUNC3(pin, state->gpios);

	/*
	 * Potential conflicts between GPIOs and pin functions were caught
	 * earlier in this function and tb10x_pinctrl_set_config will do the
	 * Right Thing, either configure the port in GPIO only mode or leave
	 * another mode compatible with this GPIO request untouched.
	 */
	if (muxport >= 0)
		FUNC4(state, muxport, muxmode);

	FUNC1(&state->mutex);

	return 0;
}