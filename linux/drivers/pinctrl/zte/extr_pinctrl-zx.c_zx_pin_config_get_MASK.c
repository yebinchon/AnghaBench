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
struct zx_pinctrl_soc_info {struct pinctrl_pin_desc* pins; } ;
struct zx_pinctrl {scalar_t__ aux_base; struct zx_pinctrl_soc_info* info; } ;
struct zx_pin_data {int cbitpos; scalar_t__ coffset; } ;
struct pinctrl_pin_desc {struct zx_pin_data* drv_data; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_STRENGTH 130 
#define  PIN_CONFIG_INPUT_ENABLE 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int ZX_DS_MASK ; 
 int ZX_DS_SHIFT ; 
 int ZX_INPUT_ENABLE ; 
 int ZX_PULL_DOWN ; 
 int ZX_PULL_UP ; 
 int ZX_SLEW ; 
 unsigned long FUNC0 (int,int) ; 
 int FUNC1 (unsigned long) ; 
 struct zx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev, unsigned int pin,
			     unsigned long *config)
{
	struct zx_pinctrl *zpctl = FUNC2(pctldev);
	struct zx_pinctrl_soc_info *info = zpctl->info;
	const struct pinctrl_pin_desc *pindesc = info->pins + pin;
	struct zx_pin_data *data = pindesc->drv_data;
	enum pin_config_param param = FUNC1(*config);
	u32 val;

	/* Skip reserved pin */
	if (!data)
		return -EINVAL;

	val = FUNC3(zpctl->aux_base + data->coffset);
	val = val >> data->cbitpos;

	switch (param) {
	case PIN_CONFIG_BIAS_PULL_DOWN:
		val &= ZX_PULL_DOWN;
		val = !!val;
		if (val == 0)
			return -EINVAL;
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		val &= ZX_PULL_UP;
		val = !!val;
		if (val == 0)
			return -EINVAL;
		break;
	case PIN_CONFIG_INPUT_ENABLE:
		val &= ZX_INPUT_ENABLE;
		val = !!val;
		if (val == 0)
			return -EINVAL;
		break;
	case PIN_CONFIG_DRIVE_STRENGTH:
		val &= ZX_DS_MASK;
		val = val >> ZX_DS_SHIFT;
		break;
	case PIN_CONFIG_SLEW_RATE:
		val &= ZX_SLEW;
		val = !!val;
		break;
	default:
		return -ENOTSUPP;
	}

	*config = FUNC0(param, val);

	return 0;
}