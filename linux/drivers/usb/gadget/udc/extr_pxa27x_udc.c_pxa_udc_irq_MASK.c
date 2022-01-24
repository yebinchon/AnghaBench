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
struct pxa_udc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int UDCCISR0_EP_MASK ; 
 int UDCCISR1_EP_MASK ; 
 int /*<<< orphan*/  UDCCR ; 
 int /*<<< orphan*/  UDCISR0 ; 
 int /*<<< orphan*/  UDCISR1 ; 
 int UDCISR1_IRCC ; 
 int UDCISR1_IRRS ; 
 int UDCISR1_IRRU ; 
 int UDCISR1_IRSU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_udc*) ; 
 int FUNC6 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *_dev)
{
	struct pxa_udc *udc = _dev;
	u32 udcisr0 = FUNC6(udc, UDCISR0);
	u32 udcisr1 = FUNC6(udc, UDCISR1);
	u32 udccr = FUNC6(udc, UDCCR);
	u32 udcisr1_spec;

	FUNC0(udc->dev, "Interrupt, UDCISR0:0x%08x, UDCISR1:0x%08x, "
		 "UDCCR:0x%08x\n", udcisr0, udcisr1, udccr);

	udcisr1_spec = udcisr1 & 0xf8000000;
	if (FUNC7(udcisr1_spec & UDCISR1_IRSU))
		FUNC5(udc);
	if (FUNC7(udcisr1_spec & UDCISR1_IRRU))
		FUNC4(udc);
	if (FUNC7(udcisr1_spec & UDCISR1_IRCC))
		FUNC2(udc);
	if (FUNC7(udcisr1_spec & UDCISR1_IRRS))
		FUNC3(udc);

	if ((udcisr0 & UDCCISR0_EP_MASK) | (udcisr1 & UDCCISR1_EP_MASK))
		FUNC1(irq, udc);

	return IRQ_HANDLED;
}