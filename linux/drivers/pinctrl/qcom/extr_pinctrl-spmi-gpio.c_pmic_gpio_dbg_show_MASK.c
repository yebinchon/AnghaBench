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
struct seq_file {int dummy; } ;
struct pmic_gpio_state {int /*<<< orphan*/  ctrl; } ;
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 struct pmic_gpio_state* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct seq_file*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, struct gpio_chip *chip)
{
	struct pmic_gpio_state *state = FUNC0(chip);
	unsigned i;

	for (i = 0; i < chip->ngpio; i++) {
		FUNC1(state->ctrl, s, i);
		FUNC2(s, "\n");
	}
}