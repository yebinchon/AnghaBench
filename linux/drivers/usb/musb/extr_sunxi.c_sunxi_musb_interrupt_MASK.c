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
struct musb {int int_usb; int /*<<< orphan*/  lock; scalar_t__ mregs; void* int_rx; void* int_tx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MUSB_FADDR ; 
 int MUSB_INTR_RESET ; 
 scalar_t__ SUNXI_MUSB_INTRRX ; 
 scalar_t__ SUNXI_MUSB_INTRTX ; 
 scalar_t__ SUNXI_MUSB_INTRUSB ; 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *__hci)
{
	struct musb *musb = __hci;
	unsigned long flags;

	FUNC6(&musb->lock, flags);

	musb->int_usb = FUNC4(musb->mregs + SUNXI_MUSB_INTRUSB);
	if (musb->int_usb)
		FUNC8(musb->int_usb, musb->mregs + SUNXI_MUSB_INTRUSB);

	if ((musb->int_usb & MUSB_INTR_RESET) && !FUNC0(musb)) {
		/* ep0 FADDR must be 0 when (re)entering peripheral mode */
		FUNC1(musb->mregs, 0);
		FUNC3(musb->mregs, MUSB_FADDR, 0);
	}

	musb->int_tx = FUNC5(musb->mregs + SUNXI_MUSB_INTRTX);
	if (musb->int_tx)
		FUNC9(musb->int_tx, musb->mregs + SUNXI_MUSB_INTRTX);

	musb->int_rx = FUNC5(musb->mregs + SUNXI_MUSB_INTRRX);
	if (musb->int_rx)
		FUNC9(musb->int_rx, musb->mregs + SUNXI_MUSB_INTRRX);

	FUNC2(musb);

	FUNC7(&musb->lock, flags);

	return IRQ_HANDLED;
}