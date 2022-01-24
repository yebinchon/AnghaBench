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
struct uniphier_pinctrl_priv {TYPE_1__* socdata; } ;
struct pinctrl_gpio_range {unsigned int* pins; int npins; unsigned int pin_base; scalar_t__ id; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int (* get_gpio_muxval ) (unsigned int,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct uniphier_pinctrl_priv* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (struct pinctrl_dev*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
					    struct pinctrl_gpio_range *range,
					    unsigned offset)
{
	struct uniphier_pinctrl_priv *priv = FUNC1(pctldev);
	unsigned int gpio_offset;
	int muxval, i;

	if (range->pins) {
		for (i = 0; i < range->npins; i++)
			if (range->pins[i] == offset)
				break;

		if (FUNC0(i == range->npins))
			return -EINVAL;

		gpio_offset = i;
	} else {
		gpio_offset = offset - range->pin_base;
	}

	gpio_offset += range->id;

	muxval = priv->socdata->get_gpio_muxval(offset, gpio_offset);

	return FUNC3(pctldev, offset, muxval);
}