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
struct pinctrl_dev {int dummy; } ;
struct mcp23s08 {int /*<<< orphan*/  dev; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  MCP_GPPU ; 
#define  PIN_CONFIG_BIAS_PULL_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mcp23s08*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 struct mcp23s08* FUNC4 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev, unsigned int pin,
			      unsigned long *configs, unsigned int num_configs)
{
	struct mcp23s08 *mcp = FUNC4(pctldev);
	enum pin_config_param param;
	u32 arg;
	int ret = 0;
	int i;

	for (i = 0; i < num_configs; i++) {
		param = FUNC3(configs[i]);
		arg = FUNC2(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_PULL_UP:
			ret = FUNC1(mcp, MCP_GPPU, pin, arg);
			break;
		default:
			FUNC0(mcp->dev, "Invalid config param %04x\n", param);
			return -ENOTSUPP;
		}
	}

	return ret;
}