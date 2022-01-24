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
struct gpio_chip {int dummy; } ;
struct chv_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHV_PADCTRL0 ; 
 int CHV_PADCTRL0_GPIOCFG_GPO ; 
 int CHV_PADCTRL0_GPIOCFG_MASK ; 
 int CHV_PADCTRL0_GPIOCFG_SHIFT ; 
 int /*<<< orphan*/  chv_lock ; 
 int /*<<< orphan*/  FUNC0 (struct chv_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 
 struct chv_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned int offset)
{
	struct chv_pinctrl *pctrl = FUNC1(chip);
	u32 ctrl0, direction;
	unsigned long flags;

	FUNC2(&chv_lock, flags);
	ctrl0 = FUNC4(FUNC0(pctrl, offset, CHV_PADCTRL0));
	FUNC3(&chv_lock, flags);

	direction = ctrl0 & CHV_PADCTRL0_GPIOCFG_MASK;
	direction >>= CHV_PADCTRL0_GPIOCFG_SHIFT;

	return direction != CHV_PADCTRL0_GPIOCFG_GPO;
}