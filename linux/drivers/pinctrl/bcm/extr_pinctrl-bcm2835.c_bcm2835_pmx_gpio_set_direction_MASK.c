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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;
typedef  enum bcm2835_fsel { ____Placeholder_bcm2835_fsel } bcm2835_fsel ;

/* Variables and functions */
 int BCM2835_FSEL_GPIO_IN ; 
 int BCM2835_FSEL_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_pinctrl*,unsigned int,int) ; 
 struct bcm2835_pinctrl* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
		struct pinctrl_gpio_range *range,
		unsigned offset,
		bool input)
{
	struct bcm2835_pinctrl *pc = FUNC1(pctldev);
	enum bcm2835_fsel fsel = input ?
		BCM2835_FSEL_GPIO_IN : BCM2835_FSEL_GPIO_OUT;

	FUNC0(pc, offset, fsel);

	return 0;
}