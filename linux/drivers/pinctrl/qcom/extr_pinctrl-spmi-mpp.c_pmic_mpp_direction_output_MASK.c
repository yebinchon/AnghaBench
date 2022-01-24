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
struct pmic_mpp_state {int /*<<< orphan*/  ctrl; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_CONFIG_OUTPUT ; 
 struct pmic_mpp_state* FUNC0 (struct gpio_chip*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned long*,int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip,
				     unsigned pin, int val)
{
	struct pmic_mpp_state *state = FUNC0(chip);
	unsigned long config;

	config = FUNC1(PIN_CONFIG_OUTPUT, val);

	return FUNC2(state->ctrl, pin, &config, 1);
}