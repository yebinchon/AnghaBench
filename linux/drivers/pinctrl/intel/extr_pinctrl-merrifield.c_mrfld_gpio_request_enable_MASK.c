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
typedef  int u32 ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mrfld_pinctrl {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BUFCFG_PINMODE_GPIO ; 
 int BUFCFG_PINMODE_MASK ; 
 int BUFCFG_PINMODE_SHIFT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mrfld_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mrfld_pinctrl*,unsigned int,int,int) ; 
 struct mrfld_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
				     struct pinctrl_gpio_range *range,
				     unsigned int pin)
{
	struct mrfld_pinctrl *mp = FUNC2(pctldev);
	u32 bits = BUFCFG_PINMODE_GPIO << BUFCFG_PINMODE_SHIFT;
	u32 mask = BUFCFG_PINMODE_MASK;
	unsigned long flags;

	if (!FUNC0(mp, pin))
		return -EBUSY;

	FUNC3(&mp->lock, flags);
	FUNC1(mp, pin, bits, mask);
	FUNC4(&mp->lock, flags);

	return 0;
}