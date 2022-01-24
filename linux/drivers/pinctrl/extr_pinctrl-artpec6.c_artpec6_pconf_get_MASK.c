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
struct pinctrl_dev {int dummy; } ;
struct artpec6_pmx {unsigned int num_pins; scalar_t__ base; TYPE_1__* pins; int /*<<< orphan*/  dev; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int ARTPEC6_PINMUX_DRV_MASK ; 
 unsigned int ARTPEC6_PINMUX_DRV_SHIFT ; 
 unsigned int ARTPEC6_PINMUX_UDC0_MASK ; 
 unsigned int ARTPEC6_PINMUX_UDC1_MASK ; 
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 131 
#define  PIN_CONFIG_BIAS_PULL_DOWN 130 
#define  PIN_CONFIG_BIAS_PULL_UP 129 
#define  PIN_CONFIG_DRIVE_STRENGTH 128 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int,unsigned int) ; 
 int FUNC4 (unsigned long) ; 
 struct artpec6_pmx* FUNC5 (struct pinctrl_dev*) ; 
 unsigned int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev, unsigned int pin,
			     unsigned long *config)
{
	struct artpec6_pmx *pmx = FUNC5(pctldev);
	enum pin_config_param param = FUNC4(*config);
	unsigned int regval;

	/* Check for valid pin */
	if (pin >= pmx->num_pins) {
		FUNC2(pmx->dev, "pinconf is not supported for pin %s\n",
			pmx->pins[pin].name);
		return -ENOTSUPP;
	}

	FUNC2(pmx->dev, "getting configuration for pin %s\n",
		pmx->pins[pin].name);

	/* Read pin register values */
	regval = FUNC6(pmx->base + FUNC1(pin));

	/* If valid, get configuration for parameter */
	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		if (!(regval & ARTPEC6_PINMUX_UDC1_MASK))
			return -EINVAL;
		break;

	case PIN_CONFIG_BIAS_PULL_UP:
	case PIN_CONFIG_BIAS_PULL_DOWN:
		if (regval & ARTPEC6_PINMUX_UDC1_MASK)
			return -EINVAL;

		regval = regval & ARTPEC6_PINMUX_UDC0_MASK;
		if ((param == PIN_CONFIG_BIAS_PULL_UP && !regval) ||
		    (param == PIN_CONFIG_BIAS_PULL_DOWN && regval))
			return -EINVAL;
		break;
	case PIN_CONFIG_DRIVE_STRENGTH:
		regval = (regval & ARTPEC6_PINMUX_DRV_MASK)
			>> ARTPEC6_PINMUX_DRV_SHIFT;
		regval = FUNC0(regval);
		*config = FUNC3(param, regval);
		break;
	default:
		return -ENOTSUPP;
	}

	return 0;
}