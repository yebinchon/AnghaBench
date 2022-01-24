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
struct mtk_pinctrl {TYPE_1__* devdata; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int (* spec_ies_smt_set ) (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int) ;unsigned int ies_offset; unsigned int smt_offset; int /*<<< orphan*/  port_align; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (scalar_t__,struct mtk_pinctrl*) ; 
 int EINVAL ; 
 unsigned int MTK_PINCTRL_NOT_SUPPORT ; 
 int PIN_CONFIG_INPUT_ENABLE ; 
 int PIN_CONFIG_INPUT_SCHMITT_ENABLE ; 
 unsigned int FUNC2 (scalar_t__,struct mtk_pinctrl*) ; 
 scalar_t__ FUNC3 (struct mtk_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct mtk_pinctrl *pctl, unsigned pin,
		int value, enum pin_config_param arg)
{
	unsigned int reg_addr, offset;
	unsigned int bit;

	/**
	 * Due to some soc are not support ies/smt config, add this special
	 * control to handle it.
	 */
	if (!pctl->devdata->spec_ies_smt_set &&
		pctl->devdata->ies_offset == MTK_PINCTRL_NOT_SUPPORT &&
			arg == PIN_CONFIG_INPUT_ENABLE)
		return -EINVAL;

	if (!pctl->devdata->spec_ies_smt_set &&
		pctl->devdata->smt_offset == MTK_PINCTRL_NOT_SUPPORT &&
			arg == PIN_CONFIG_INPUT_SCHMITT_ENABLE)
		return -EINVAL;

	/*
	 * Due to some pins are irregular, their input enable and smt
	 * control register are discontinuous, so we need this special handle.
	 */
	if (pctl->devdata->spec_ies_smt_set) {
		return pctl->devdata->spec_ies_smt_set(FUNC4(pctl, pin),
			pin, pctl->devdata->port_align, value, arg);
	}

	bit = FUNC0(pin & 0xf);

	if (arg == PIN_CONFIG_INPUT_ENABLE)
		offset = pctl->devdata->ies_offset;
	else
		offset = pctl->devdata->smt_offset;

	if (value)
		reg_addr = FUNC2(FUNC3(pctl, pin) + offset, pctl);
	else
		reg_addr = FUNC1(FUNC3(pctl, pin) + offset, pctl);

	FUNC5(FUNC4(pctl, pin), reg_addr, bit);
	return 0;
}