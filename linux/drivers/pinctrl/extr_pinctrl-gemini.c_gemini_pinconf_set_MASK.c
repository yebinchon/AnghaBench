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
struct gemini_pmx {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;
struct gemini_pin_conf {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_SKEW_DELAY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gemini_pin_conf* FUNC3 (struct gemini_pmx*,unsigned int) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 struct gemini_pmx* FUNC6 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev, unsigned int pin,
			      unsigned long *configs, unsigned int num_configs)
{
	struct gemini_pmx *pmx = FUNC6(pctldev);
	const struct gemini_pin_conf *conf;
	enum pin_config_param param;
	u32 arg;
	int ret = 0;
	int i;

	for (i = 0; i < num_configs; i++) {
		param = FUNC5(configs[i]);
		arg = FUNC4(configs[i]);

		switch (param) {
		case PIN_CONFIG_SKEW_DELAY:
			if (arg > 0xf)
				return -EINVAL;
			conf = FUNC3(pmx, pin);
			if (!conf) {
				FUNC1(pmx->dev,
					"invalid pin for skew delay %d\n", pin);
				return -ENOTSUPP;
			}
			arg <<= (FUNC2(conf->mask) - 1);
			FUNC0(pmx->dev,
				"set pin %d to skew delay mask %08x, val %08x\n",
				pin, conf->mask, arg);
			FUNC7(pmx->map, conf->reg, conf->mask, arg);
			break;
		default:
			FUNC1(pmx->dev, "Invalid config param %04x\n", param);
			return -ENOTSUPP;
		}
	}

	return ret;
}