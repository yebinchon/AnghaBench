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
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct imx_pinctrl_soc_info {int flags; } ;
struct imx_pinctrl {scalar_t__ base; struct imx_pin_reg* pin_regs; int /*<<< orphan*/  dev; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_reg {int conf_reg; } ;

/* Variables and functions */
 int IMX_USE_SCU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct pinctrl_dev*,unsigned int) ; 
 struct imx_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC7(struct pinctrl_dev *pctldev,
				   struct seq_file *s, unsigned pin_id)
{
	struct imx_pinctrl *ipctl = FUNC3(pctldev);
	const struct imx_pinctrl_soc_info *info = ipctl->info;
	const struct imx_pin_reg *pin_reg;
	unsigned long config;
	int ret;

	if (info->flags & IMX_USE_SCU) {
		ret = FUNC1(pctldev, pin_id, &config);
		if (ret) {
			FUNC0(ipctl->dev, "failed to get %s pinconf\n",
				FUNC2(pctldev, pin_id));
			FUNC6(s, "N/A");
			return;
		}
	} else {
		pin_reg = &ipctl->pin_regs[pin_id];
		if (pin_reg->conf_reg == -1) {
			FUNC6(s, "N/A");
			return;
		}

		config = FUNC4(ipctl->base + pin_reg->conf_reg);
	}

	FUNC5(s, "0x%lx", config);
}