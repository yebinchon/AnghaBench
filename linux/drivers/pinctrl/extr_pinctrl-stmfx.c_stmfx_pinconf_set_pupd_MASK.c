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
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ STMFX_REG_GPIO_PUPD ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct stmfx_pinctrl *pctl,
				  unsigned int offset, u32 pupd)
{
	u32 reg = STMFX_REG_GPIO_PUPD + FUNC1(offset);
	u32 mask = FUNC0(offset);

	return FUNC2(pctl->stmfx->map, reg, mask, pupd ? mask : 0);
}