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
typedef  int u32 ;
struct pinctrl_dev {int dummy; } ;
struct aspeed_pinctrl_data {int /*<<< orphan*/  scu; } ;
struct aspeed_pin_config_map {scalar_t__ arg; } ;
struct aspeed_pin_config {unsigned int bit; int /*<<< orphan*/  reg; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  MAP_TYPE_VAL ; 
 int const PIN_CONFIG_BIAS_PULL_DOWN ; 
 int const PIN_CONFIG_DRIVE_STRENGTH ; 
 struct aspeed_pin_config* FUNC1 (struct aspeed_pinctrl_data const*,unsigned int,int const) ; 
 struct aspeed_pin_config_map* FUNC2 (int const,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC3 (int const,int) ; 
 int FUNC4 (unsigned long) ; 
 struct aspeed_pinctrl_data* FUNC5 (struct pinctrl_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC7(struct pinctrl_dev *pctldev, unsigned int offset,
		unsigned long *config)
{
	const enum pin_config_param param = FUNC4(*config);
	const struct aspeed_pin_config_map *pmap;
	const struct aspeed_pinctrl_data *pdata;
	const struct aspeed_pin_config *pconf;
	unsigned int val;
	int rc = 0;
	u32 arg;

	pdata = FUNC5(pctldev);
	pconf = FUNC1(pdata, offset, param);
	if (!pconf)
		return -ENOTSUPP;

	rc = FUNC6(pdata->scu, pconf->reg, &val);
	if (rc < 0)
		return rc;

	pmap = FUNC2(param, MAP_TYPE_VAL,
			(val & FUNC0(pconf->bit)) >> pconf->bit);

	if (!pmap)
		return -EINVAL;

	if (param == PIN_CONFIG_DRIVE_STRENGTH)
		arg = (u32) pmap->arg;
	else if (param == PIN_CONFIG_BIAS_PULL_DOWN)
		arg = !!pmap->arg;
	else
		arg = 1;

	if (!arg)
		return -EINVAL;

	*config = FUNC3(param, arg);

	return 0;
}