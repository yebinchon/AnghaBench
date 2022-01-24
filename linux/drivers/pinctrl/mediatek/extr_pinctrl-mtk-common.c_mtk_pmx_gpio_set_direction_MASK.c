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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct TYPE_2__ {unsigned int dir_offset; int /*<<< orphan*/  (* spec_dir_set ) (unsigned int*,unsigned int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,struct mtk_pinctrl*) ; 
 unsigned int FUNC2 (unsigned int,struct mtk_pinctrl*) ; 
 unsigned int FUNC3 (struct mtk_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_pinctrl*,unsigned int) ; 
 struct mtk_pinctrl* FUNC5 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev,
			struct pinctrl_gpio_range *range, unsigned offset,
			bool input)
{
	unsigned int reg_addr;
	unsigned int bit;
	struct mtk_pinctrl *pctl = FUNC5(pctldev);

	reg_addr = FUNC3(pctl, offset) + pctl->devdata->dir_offset;
	bit = FUNC0(offset & 0xf);

	if (pctl->devdata->spec_dir_set)
		pctl->devdata->spec_dir_set(&reg_addr, offset);

	if (input)
		/* Different SoC has different alignment offset. */
		reg_addr = FUNC1(reg_addr, pctl);
	else
		reg_addr = FUNC2(reg_addr, pctl);

	FUNC6(FUNC4(pctl, offset), reg_addr, bit);
	return 0;
}