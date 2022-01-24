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
typedef  size_t u32 ;
struct stmfx_pinctrl {size_t* irq_toggle_edge; size_t* irq_gpi_type; TYPE_1__* stmfx; int /*<<< orphan*/  gpio_chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ STMFX_REG_IRQ_GPI_TYPE ; 
 size_t FUNC0 (unsigned int) ; 
 size_t FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,size_t,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct stmfx_pinctrl *pctl,
					     unsigned int offset)
{
	u32 reg = FUNC1(offset);
	u32 mask = FUNC0(offset);
	int val;

	if (!(pctl->irq_toggle_edge[reg] & mask))
		return;

	val = FUNC3(&pctl->gpio_chip, offset);
	if (val < 0)
		return;

	if (val) {
		pctl->irq_gpi_type[reg] &= mask;
		FUNC2(pctl->stmfx->map,
				  STMFX_REG_IRQ_GPI_TYPE + reg,
				  mask, 0);

	} else {
		pctl->irq_gpi_type[reg] |= mask;
		FUNC2(pctl->stmfx->map,
				  STMFX_REG_IRQ_GPI_TYPE + reg,
				  mask, mask);
	}
}