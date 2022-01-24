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
struct meson_pmx_bank {int dummy; } ;
struct meson_pinctrl {int /*<<< orphan*/  reg_mux; } ;

/* Variables and functions */
 int FUNC0 (struct meson_pinctrl*,unsigned int,struct meson_pmx_bank**) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_pmx_bank*,unsigned int,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct meson_pinctrl *pc,
			unsigned int pin, unsigned int func)
{
	int ret;
	int reg;
	int offset;
	struct meson_pmx_bank *bank;

	ret = FUNC0(pc, pin, &bank);
	if (ret)
		return ret;

	FUNC1(bank, pin, &reg, &offset);

	ret = FUNC2(pc->reg_mux, reg << 2,
		0xf << offset, (func & 0xf) << offset);

	return ret;
}