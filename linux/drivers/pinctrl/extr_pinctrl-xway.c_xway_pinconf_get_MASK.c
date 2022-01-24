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
typedef  int /*<<< orphan*/  u32 ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct ltq_pinmux_info {int /*<<< orphan*/ * membase; } ;
typedef  enum ltq_pinconf_param { ____Placeholder_ltq_pinconf_param } ltq_pinconf_param ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  GPIO3_OD ; 
 int /*<<< orphan*/  GPIO3_PUDEN ; 
 int /*<<< orphan*/  GPIO3_PUDSEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned long FUNC4 (int,int) ; 
#define  LTQ_PINCONF_PARAM_OPEN_DRAIN 130 
#define  LTQ_PINCONF_PARAM_OUTPUT 129 
#define  LTQ_PINCONF_PARAM_PULL 128 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned int) ; 
 int PORT3 ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ltq_pinmux_info* FUNC10 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC11(struct pinctrl_dev *pctldev,
				unsigned pin,
				unsigned long *config)
{
	struct ltq_pinmux_info *info = FUNC10(pctldev);
	enum ltq_pinconf_param param = FUNC5(*config);
	int port = FUNC6(pin);
	u32 reg;

	switch (param) {
	case LTQ_PINCONF_PARAM_OPEN_DRAIN:
		if (port == PORT3)
			reg = GPIO3_OD;
		else
			reg = FUNC1(pin);
		*config = FUNC4(param,
			!FUNC9(info->membase[0], reg, FUNC7(pin)));
		break;

	case LTQ_PINCONF_PARAM_PULL:
		if (port == PORT3)
			reg = GPIO3_PUDEN;
		else
			reg = FUNC2(pin);
		if (!FUNC9(info->membase[0], reg, FUNC7(pin))) {
			*config = FUNC4(param, 0);
			break;
		}

		if (port == PORT3)
			reg = GPIO3_PUDSEL;
		else
			reg = FUNC3(pin);
		if (!FUNC9(info->membase[0], reg, FUNC7(pin)))
			*config = FUNC4(param, 2);
		else
			*config = FUNC4(param, 1);
		break;

	case LTQ_PINCONF_PARAM_OUTPUT:
		reg = FUNC0(pin);
		*config = FUNC4(param,
			FUNC9(info->membase[0], reg, FUNC7(pin)));
		break;
	default:
		FUNC8(pctldev->dev, "Invalid config param %04x\n", param);
		return -ENOTSUPP;
	}
	return 0;
}