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
struct chv_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chv_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  chv_lock ; 
 int /*<<< orphan*/  FUNC1 (struct chv_pinctrl*,unsigned int) ; 
 struct chv_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct pinctrl_dev *pctldev,
				  struct pinctrl_gpio_range *range,
				  unsigned int offset)
{
	struct chv_pinctrl *pctrl = FUNC2(pctldev);
	unsigned long flags;

	FUNC3(&chv_lock, flags);

	if (!FUNC1(pctrl, offset))
		FUNC0(pctrl, offset);

	FUNC4(&chv_lock, flags);
}