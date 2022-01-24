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
#define  LTQ_PINCONF_PARAM_OPEN_DRAIN 130 
#define  LTQ_PINCONF_PARAM_OUTPUT 129 
#define  LTQ_PINCONF_PARAM_PULL 128 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned int) ; 
 int PORT3 ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ltq_pinmux_info* FUNC11 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC12(struct pinctrl_dev *pctldev,
				unsigned pin,
				unsigned long *configs,
				unsigned num_configs)
{
	struct ltq_pinmux_info *info = FUNC11(pctldev);
	enum ltq_pinconf_param param;
	int arg;
	int port = FUNC6(pin);
	u32 reg;
	int i;

	for (i = 0; i < num_configs; i++) {
		param = FUNC5(configs[i]);
		arg = FUNC4(configs[i]);

		switch (param) {
		case LTQ_PINCONF_PARAM_OPEN_DRAIN:
			if (port == PORT3)
				reg = GPIO3_OD;
			else
				reg = FUNC1(pin);
			if (arg == 0)
				FUNC10(info->membase[0],
					reg,
					FUNC7(pin));
			else
				FUNC9(info->membase[0],
					reg,
					FUNC7(pin));
			break;

		case LTQ_PINCONF_PARAM_PULL:
			if (port == PORT3)
				reg = GPIO3_PUDEN;
			else
				reg = FUNC2(pin);
			if (arg == 0) {
				FUNC9(info->membase[0],
					reg,
					FUNC7(pin));
				break;
			}
			FUNC10(info->membase[0], reg, FUNC7(pin));

			if (port == PORT3)
				reg = GPIO3_PUDSEL;
			else
				reg = FUNC3(pin);
			if (arg == 1)
				FUNC9(info->membase[0],
					reg,
					FUNC7(pin));
			else if (arg == 2)
				FUNC10(info->membase[0],
					reg,
					FUNC7(pin));
			else
				FUNC8(pctldev->dev,
					"Invalid pull value %d\n", arg);
			break;

		case LTQ_PINCONF_PARAM_OUTPUT:
			reg = FUNC0(pin);
			if (arg == 0)
				FUNC9(info->membase[0],
					reg,
					FUNC7(pin));
			else
				FUNC10(info->membase[0],
					reg,
					FUNC7(pin));
			break;

		default:
			FUNC8(pctldev->dev,
				"Invalid config param %04x\n", param);
			return -ENOTSUPP;
		}
	} /* for each config */

	return 0;
}