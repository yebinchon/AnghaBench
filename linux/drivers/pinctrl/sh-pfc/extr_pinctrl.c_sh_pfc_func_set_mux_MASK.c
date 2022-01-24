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
struct sh_pfc_pinctrl {struct sh_pfc_pin_config* configs; struct sh_pfc* pfc; } ;
struct sh_pfc_pin_group {unsigned int nr_pins; int /*<<< orphan*/ * mux; int /*<<< orphan*/ * pins; int /*<<< orphan*/  name; } ;
struct sh_pfc_pin_config {int mux_set; int /*<<< orphan*/  mux_mark; scalar_t__ gpio_enabled; } ;
struct sh_pfc {int /*<<< orphan*/  lock; TYPE_1__* info; } ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct sh_pfc_pin_group* groups; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  PINMUX_TYPE_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sh_pfc_pinctrl* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (struct sh_pfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sh_pfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev, unsigned selector,
			       unsigned group)
{
	struct sh_pfc_pinctrl *pmx = FUNC1(pctldev);
	struct sh_pfc *pfc = pmx->pfc;
	const struct sh_pfc_pin_group *grp = &pfc->info->groups[group];
	unsigned long flags;
	unsigned int i;
	int ret = 0;

	FUNC0(pctldev->dev, "Configuring pin group %s\n", grp->name);

	FUNC4(&pfc->lock, flags);

	for (i = 0; i < grp->nr_pins; ++i) {
		int idx = FUNC3(pfc, grp->pins[i]);
		struct sh_pfc_pin_config *cfg = &pmx->configs[idx];

		/*
		 * This driver cannot manage both gpio and mux when the gpio
		 * pin is already enabled. So, this function fails.
		 */
		if (cfg->gpio_enabled) {
			ret = -EBUSY;
			goto done;
		}

		ret = FUNC2(pfc, grp->mux[i], PINMUX_TYPE_FUNCTION);
		if (ret < 0)
			goto done;
	}

	/* All group pins are configured, mark the pins as mux_set */
	for (i = 0; i < grp->nr_pins; ++i) {
		int idx = FUNC3(pfc, grp->pins[i]);
		struct sh_pfc_pin_config *cfg = &pmx->configs[idx];

		cfg->mux_set = true;
		cfg->mux_mark = grp->mux[i];
	}

done:
	FUNC5(&pfc->lock, flags);
	return ret;
}