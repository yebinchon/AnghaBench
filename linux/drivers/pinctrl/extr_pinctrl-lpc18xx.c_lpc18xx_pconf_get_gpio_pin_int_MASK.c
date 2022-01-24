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
struct lpc18xx_scu_data {scalar_t__ base; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ LPC18XX_SCU_PINTSEL0 ; 
 scalar_t__ LPC18XX_SCU_PINTSEL1 ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pinctrl_dev*,unsigned int) ; 
 struct lpc18xx_scu_data* FUNC3 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
					  int *arg, unsigned pin)
{
	struct lpc18xx_scu_data *scu = FUNC3(pctldev);
	int gpio, ret;
	u32 val;

	gpio = FUNC2(pctldev, pin);
	if (gpio < 0)
		return -ENOTSUPP;

	val = FUNC1(gpio);

	/*
	 * Check if this pin has been enabled as a interrupt in any of the two
	 * PINTSEL registers. *arg indicates which interrupt number (0-7).
	 */
	*arg = 0;
	ret = FUNC0(scu->base + LPC18XX_SCU_PINTSEL0, val, arg);
	if (ret == 0)
		return ret;

	return FUNC0(scu->base + LPC18XX_SCU_PINTSEL1, val, arg);
}