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
struct dwc3_omap {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3_omap*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3_omap*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_omap*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3_omap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3_omap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_omap)
{
	struct dwc3_omap	*omap = _omap;
	u32			reg;

	/* clear irq status flags */
	reg = FUNC2(omap);
	FUNC4(omap, reg);

	reg = FUNC1(omap);
	FUNC3(omap, reg);

	/* unmask irqs */
	FUNC0(omap);

	return IRQ_HANDLED;
}