#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uniphier_pinctrl_priv {TYPE_2__* socdata; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int num_pins; } ;

/* Variables and functions */
 struct uniphier_pinctrl_priv* FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (struct pinctrl_dev*,unsigned int const,unsigned long*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
					      unsigned selector,
					      unsigned long *configs,
					      unsigned num_configs)
{
	struct uniphier_pinctrl_priv *priv = FUNC0(pctldev);
	const unsigned *pins = priv->socdata->groups[selector].pins;
	unsigned num_pins = priv->socdata->groups[selector].num_pins;
	int i, ret;

	for (i = 0; i < num_pins; i++) {
		ret = FUNC1(pctldev, pins[i],
						   configs, num_configs);
		if (ret)
			return ret;
	}

	return 0;
}