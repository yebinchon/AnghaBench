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
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 struct gpio_chip* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct pinctrl_dev*,struct gpio_chip*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct pinctrl_dev *pctldev, struct seq_file *s,
		   unsigned offset)
{
	struct gpio_chip *chip = FUNC0(offset);

	if (!chip) {
		FUNC2(s, "invalid pin offset");
		return;
	}
	FUNC1(s, pctldev, chip, offset - chip->base, offset);
}