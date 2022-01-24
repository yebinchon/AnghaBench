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
typedef  int /*<<< orphan*/  u16 ;
struct pinctrl_dev {int dummy; } ;
struct omap_rtc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  OMAP_RTC_PMIC_REG ; 
#define  PIN_CONFIG_ACTIVE_HIGH 129 
#define  PIN_CONFIG_INPUT_ENABLE 128 
 unsigned long FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned long) ; 
 struct omap_rtc* FUNC4 (struct pinctrl_dev*) ; 
 int FUNC5 (struct omap_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
			unsigned int pin, unsigned long *config)
{
	struct omap_rtc *rtc = FUNC4(pctldev);
	unsigned int param = FUNC3(*config);
	u32 val;
	u16 arg = 0;

	val = FUNC5(rtc, OMAP_RTC_PMIC_REG);

	switch (param) {
	case PIN_CONFIG_INPUT_ENABLE:
		if (!(val & FUNC0(pin)))
			return -EINVAL;
		break;
	case PIN_CONFIG_ACTIVE_HIGH:
		if (val & FUNC1(pin))
			return -EINVAL;
		break;
	default:
		return -ENOTSUPP;
	};

	*config = FUNC2(param, arg);

	return 0;
}