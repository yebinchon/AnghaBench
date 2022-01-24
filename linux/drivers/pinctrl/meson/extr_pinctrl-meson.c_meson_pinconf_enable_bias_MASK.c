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
struct meson_pinctrl {int /*<<< orphan*/  reg_pullen; int /*<<< orphan*/  reg_pull; } ;
struct meson_bank {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  REG_PULL ; 
 int /*<<< orphan*/  REG_PULLEN ; 
 int /*<<< orphan*/  FUNC1 (struct meson_bank*,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int FUNC2 (struct meson_pinctrl*,unsigned int,struct meson_bank**) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct meson_pinctrl *pc, unsigned int pin,
				     bool pull_up)
{
	struct meson_bank *bank;
	unsigned int reg, bit, val = 0;
	int ret;

	ret = FUNC2(pc, pin, &bank);
	if (ret)
		return ret;

	FUNC1(bank, pin, REG_PULL, &reg, &bit);
	if (pull_up)
		val = FUNC0(bit);

	ret = FUNC3(pc->reg_pull, reg, FUNC0(bit), val);
	if (ret)
		return ret;

	FUNC1(bank, pin, REG_PULLEN, &reg, &bit);
	ret = FUNC3(pc->reg_pullen, reg, FUNC0(bit),	FUNC0(bit));
	if (ret)
		return ret;

	return 0;
}