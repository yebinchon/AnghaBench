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
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct gpio_chip {TYPE_1__ irq; } ;
struct bcm2835_pinctrl {size_t* irq_type; struct gpio_chip gpio_chip; } ;
typedef  enum bcm2835_fsel { ____Placeholder_bcm2835_fsel } bcm2835_fsel ;

/* Variables and functions */
 int /*<<< orphan*/  GPLEV0 ; 
 char** bcm2835_functions ; 
 int FUNC0 (struct bcm2835_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct bcm2835_pinctrl*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * irq_type_names ; 
 struct bcm2835_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,char const*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pinctrl_dev *pctldev,
		struct seq_file *s,
		unsigned offset)
{
	struct bcm2835_pinctrl *pc = FUNC3(pctldev);
	struct gpio_chip *chip = &pc->gpio_chip;
	enum bcm2835_fsel fsel = FUNC1(pc, offset);
	const char *fname = bcm2835_functions[fsel];
	int value = FUNC0(pc, GPLEV0, offset);
	int irq = FUNC2(chip->irq.domain, offset);

	FUNC4(s, "function %s in %s; irq %d (%s)",
		fname, value ? "hi" : "lo",
		irq, irq_type_names[pc->irq_type[offset]]);
}