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
typedef  int /*<<< orphan*/  supply ;
struct sunxi_pinctrl_regulator {struct regulator* regulator; int /*<<< orphan*/  refcount; } ;
struct sunxi_pinctrl {int /*<<< orphan*/  dev; struct sunxi_pinctrl_regulator* regulators; TYPE_1__* desc; } ;
struct regulator {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int pin_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator*) ; 
 unsigned int PINS_PER_BANK ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char) ; 
 struct sunxi_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct regulator*) ; 
 struct regulator* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct sunxi_pinctrl*,unsigned int,struct regulator*) ; 

__attribute__((used)) static int FUNC11(struct pinctrl_dev *pctldev, unsigned offset)
{
	struct sunxi_pinctrl *pctl = FUNC3(pctldev);
	unsigned short bank = offset / PINS_PER_BANK;
	unsigned short bank_offset = bank - pctl->desc->pin_base /
					    PINS_PER_BANK;
	struct sunxi_pinctrl_regulator *s_reg = &pctl->regulators[bank_offset];
	struct regulator *reg = s_reg->regulator;
	char supply[16];
	int ret;

	if (reg) {
		FUNC4(&s_reg->refcount);
		return 0;
	}

	FUNC9(supply, sizeof(supply), "vcc-p%c", 'a' + bank);
	reg = FUNC7(pctl->dev, supply);
	if (FUNC0(reg)) {
		FUNC2(pctl->dev, "Couldn't get bank P%c regulator\n",
			'A' + bank);
		return FUNC1(reg);
	}

	ret = FUNC6(reg);
	if (ret) {
		FUNC2(pctl->dev,
			"Couldn't enable bank P%c regulator\n", 'A' + bank);
		goto out;
	}

	FUNC10(pctl, offset, reg);

	s_reg->regulator = reg;
	FUNC5(&s_reg->refcount, 1);

	return 0;

out:
	FUNC8(s_reg->regulator);

	return ret;
}