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
struct musb {int /*<<< orphan*/  lock; void* int_rx; void* int_tx; scalar_t__ int_usb; int /*<<< orphan*/  mregs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MUSB_INTRRX ; 
 int /*<<< orphan*/  MUSB_INTRTX ; 
 int /*<<< orphan*/  MUSB_INTRUSB ; 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *__hci)
{
	unsigned long   flags;
	irqreturn_t     retval = IRQ_NONE;
	struct musb     *musb = __hci;

	FUNC3(&musb->lock, flags);

	musb->int_usb = FUNC1(musb->mregs, MUSB_INTRUSB);
	musb->int_tx = FUNC2(musb->mregs, MUSB_INTRTX);
	musb->int_rx = FUNC2(musb->mregs, MUSB_INTRRX);

	if (musb->int_usb || musb->int_tx || musb->int_rx)
		retval = FUNC0(musb);

	FUNC4(&musb->lock, flags);

	return retval;
}