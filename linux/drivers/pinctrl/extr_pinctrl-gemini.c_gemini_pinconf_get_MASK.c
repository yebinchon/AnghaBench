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
struct gemini_pmx {int /*<<< orphan*/  map; } ;
struct gemini_pin_conf {int mask; int /*<<< orphan*/  reg; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_SKEW_DELAY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gemini_pin_conf* FUNC1 (struct gemini_pmx*,unsigned int) ; 
 unsigned long FUNC2 (int const,int) ; 
 int FUNC3 (unsigned long) ; 
 struct gemini_pmx* FUNC4 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev, unsigned int pin,
			      unsigned long *config)
{
	struct gemini_pmx *pmx = FUNC4(pctldev);
	enum pin_config_param param = FUNC3(*config);
	const struct gemini_pin_conf *conf;
	u32 val;

	switch (param) {
	case PIN_CONFIG_SKEW_DELAY:
		conf = FUNC1(pmx, pin);
		if (!conf)
			return -ENOTSUPP;
		FUNC5(pmx->map, conf->reg, &val);
		val &= conf->mask;
		val >>= (FUNC0(conf->mask) - 1);
		*config = FUNC2(PIN_CONFIG_SKEW_DELAY, val);
		break;
	default:
		return -ENOTSUPP;
	}

	return 0;
}