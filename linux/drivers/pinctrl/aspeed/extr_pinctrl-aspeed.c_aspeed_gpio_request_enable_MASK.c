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
struct aspeed_sig_expr {int dummy; } ;
struct aspeed_pinctrl_data {int /*<<< orphan*/  pinmux; TYPE_1__* pins; } ;
struct aspeed_pin_desc {int /*<<< orphan*/  name; struct aspeed_sig_expr*** prios; } ;
struct TYPE_2__ {struct aspeed_pin_desc* drv_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct aspeed_sig_expr const**) ; 
 scalar_t__ FUNC1 (struct aspeed_sig_expr const**) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct aspeed_sig_expr const*) ; 
 char* FUNC3 (struct aspeed_pin_desc const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct aspeed_pinctrl_data* FUNC5 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,char*) ; 

int FUNC7(struct pinctrl_dev *pctldev,
			       struct pinctrl_gpio_range *range,
			       unsigned int offset)
{
	int ret;
	struct aspeed_pinctrl_data *pdata = FUNC5(pctldev);
	const struct aspeed_pin_desc *pdesc = pdata->pins[offset].drv_data;
	const struct aspeed_sig_expr ***prios, **funcs, *expr;

	if (!pdesc)
		return -EINVAL;

	prios = pdesc->prios;

	if (!prios)
		return -ENXIO;

	/* Disable any functions of higher priority than GPIO */
	while ((funcs = *prios)) {
		if (FUNC1(funcs))
			break;

		ret = FUNC0(&pdata->pinmux, funcs);
		if (ret)
			return ret;

		prios++;
	}

	if (!funcs) {
		char *signals = FUNC3(pdesc);

		FUNC6("No GPIO signal type found on pin %s (%d). Found: %s\n",
			pdesc->name, offset, signals);
		FUNC4(signals);

		return -ENXIO;
	}

	expr = *funcs;

	/*
	 * Disabling all higher-priority expressions is enough to enable the
	 * lowest-priority signal type. As such it has no associated
	 * expression.
	 */
	if (!expr)
		return 0;

	/*
	 * If GPIO is not the lowest priority signal type, assume there is only
	 * one expression defined to enable the GPIO function
	 */
	return FUNC2(&pdata->pinmux, expr);
}