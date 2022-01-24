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
typedef  int u32 ;
struct msm_pingroup {int /*<<< orphan*/  oe_bit; } ;
struct msm_pinctrl {TYPE_1__* soc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct msm_pingroup* groups; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct msm_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct msm_pinctrl*,struct msm_pingroup const*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct msm_pinctrl *pctrl = FUNC1(chip);
	const struct msm_pingroup *g;
	u32 val;

	g = &pctrl->soc->groups[offset];

	val = FUNC2(pctrl, g);

	/* 0 = output, 1 = input */
	return val & FUNC0(g->oe_bit) ? 0 : 1;
}