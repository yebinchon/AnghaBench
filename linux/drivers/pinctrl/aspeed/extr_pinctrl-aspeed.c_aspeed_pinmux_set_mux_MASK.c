#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pinctrl_dev {int dummy; } ;
struct aspeed_sig_expr {int dummy; } ;
struct TYPE_5__ {struct aspeed_pin_function* functions; struct aspeed_pin_group* groups; } ;
struct aspeed_pinctrl_data {TYPE_2__ pinmux; TYPE_1__* pins; } ;
struct aspeed_pin_group {int npins; int* pins; } ;
struct aspeed_pin_function {int /*<<< orphan*/  name; } ;
struct aspeed_pin_desc {int /*<<< orphan*/  name; struct aspeed_sig_expr*** prios; } ;
struct TYPE_4__ {struct aspeed_pin_desc* drv_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int FUNC0 (TYPE_2__*,struct aspeed_sig_expr const**) ; 
 struct aspeed_sig_expr* FUNC1 (struct aspeed_sig_expr const**,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,struct aspeed_sig_expr const*) ; 
 char* FUNC3 (struct aspeed_pin_desc const*) ; 
 char* FUNC4 (struct aspeed_pin_desc const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct aspeed_pinctrl_data* FUNC6 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*) ; 

int FUNC9(struct pinctrl_dev *pctldev, unsigned int function,
			  unsigned int group)
{
	int i;
	int ret;
	struct aspeed_pinctrl_data *pdata = FUNC6(pctldev);
	const struct aspeed_pin_group *pgroup = &pdata->pinmux.groups[group];
	const struct aspeed_pin_function *pfunc =
		&pdata->pinmux.functions[function];

	for (i = 0; i < pgroup->npins; i++) {
		int pin = pgroup->pins[i];
		const struct aspeed_pin_desc *pdesc = pdata->pins[pin].drv_data;
		const struct aspeed_sig_expr *expr = NULL;
		const struct aspeed_sig_expr **funcs;
		const struct aspeed_sig_expr ***prios;

		FUNC7("Muxing pin %d for %s\n", pin, pfunc->name);

		if (!pdesc)
			return -EINVAL;

		prios = pdesc->prios;

		if (!prios)
			continue;

		/* Disable functions at a higher priority than that requested */
		while ((funcs = *prios)) {
			expr = FUNC1(funcs, pfunc->name);

			if (expr)
				break;

			ret = FUNC0(&pdata->pinmux, funcs);
			if (ret)
				return ret;

			prios++;
		}

		if (!expr) {
			char *functions = FUNC3(pdesc);
			char *signals = FUNC4(pdesc);

			FUNC8("No function %s found on pin %s (%d). Found signal(s) %s for function(s) %s\n",
				pfunc->name, pdesc->name, pin, signals,
				functions);
			FUNC5(signals);
			FUNC5(functions);

			return -ENXIO;
		}

		ret = FUNC2(&pdata->pinmux, expr);
		if (ret)
			return ret;
	}

	return 0;
}