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
struct imx_pinctrl_soc_info {int flags; unsigned long mux_mask; TYPE_1__* pins; } ;
struct imx_pinctrl {scalar_t__ base; int /*<<< orphan*/  dev; struct imx_pin_reg* pin_regs; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_reg {int conf_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int SHARE_MUX_CONF_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct imx_pinctrl* FUNC1 (struct pinctrl_dev*) ; 
 unsigned long FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev, unsigned pin_id,
				unsigned long *config)
{
	struct imx_pinctrl *ipctl = FUNC1(pctldev);
	const struct imx_pinctrl_soc_info *info = ipctl->info;
	const struct imx_pin_reg *pin_reg = &ipctl->pin_regs[pin_id];

	if (pin_reg->conf_reg == -1) {
		FUNC0(ipctl->dev, "Pin(%s) does not support config function\n",
			info->pins[pin_id].name);
		return -EINVAL;
	}

	*config = FUNC2(ipctl->base + pin_reg->conf_reg);

	if (info->flags & SHARE_MUX_CONF_REG)
		*config &= ~info->mux_mask;

	return 0;
}