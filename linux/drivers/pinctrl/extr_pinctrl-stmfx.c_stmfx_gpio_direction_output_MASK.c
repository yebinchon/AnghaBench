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
typedef  scalar_t__ u32 ;
struct stmfx_pinctrl {TYPE_1__* stmfx; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ STMFX_REG_GPIO_DIR ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 struct stmfx_pinctrl* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc,
				       unsigned int offset, int value)
{
	struct stmfx_pinctrl *pctl = FUNC2(gc);
	u32 reg = STMFX_REG_GPIO_DIR + FUNC1(offset);
	u32 mask = FUNC0(offset);

	FUNC4(gc, offset, value);

	return FUNC3(pctl->stmfx->map, reg, mask, mask);
}