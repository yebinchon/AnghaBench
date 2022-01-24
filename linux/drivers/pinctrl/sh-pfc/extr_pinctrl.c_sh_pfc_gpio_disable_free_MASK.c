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
struct sh_pfc_pinctrl {struct sh_pfc_pin_config* configs; struct sh_pfc* pfc; } ;
struct sh_pfc_pin_config {int gpio_enabled; int /*<<< orphan*/  mux_mark; scalar_t__ mux_set; } ;
struct sh_pfc {int /*<<< orphan*/  lock; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PINMUX_TYPE_FUNCTION ; 
 struct sh_pfc_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_pfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sh_pfc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct pinctrl_dev *pctldev,
				     struct pinctrl_gpio_range *range,
				     unsigned offset)
{
	struct sh_pfc_pinctrl *pmx = FUNC0(pctldev);
	struct sh_pfc *pfc = pmx->pfc;
	int idx = FUNC2(pfc, offset);
	struct sh_pfc_pin_config *cfg = &pmx->configs[idx];
	unsigned long flags;

	FUNC3(&pfc->lock, flags);
	cfg->gpio_enabled = false;
	/* If mux is already set, this configures it here */
	if (cfg->mux_set)
		FUNC1(pfc, cfg->mux_mark, PINMUX_TYPE_FUNCTION);
	FUNC4(&pfc->lock, flags);
}