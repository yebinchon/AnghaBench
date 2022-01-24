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
struct tb10x_pinctrl {int /*<<< orphan*/  mutex; int /*<<< orphan*/  gpios; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tb10x_pinctrl* FUNC3 (struct pinctrl_dev*) ; 

__attribute__((used)) static void FUNC4(struct pinctrl_dev *pctl,
					struct pinctrl_gpio_range *range,
					unsigned pin)
{
	struct tb10x_pinctrl *state = FUNC3(pctl);

	FUNC1(&state->mutex);

	FUNC0(pin, state->gpios);

	FUNC2(&state->mutex);
}