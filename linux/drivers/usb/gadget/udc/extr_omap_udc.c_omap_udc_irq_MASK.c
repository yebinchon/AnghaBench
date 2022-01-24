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
typedef  int u16 ;
struct omap_udc {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int UDC_DS_CHG ; 
 int UDC_EP0_RX ; 
 int UDC_EP0_TX ; 
 int UDC_EPN_RX ; 
 int UDC_EPN_TX ; 
 int UDC_IRQ_SOF ; 
 int /*<<< orphan*/  UDC_IRQ_SRC ; 
 int UDC_RXN_CNT ; 
 int UDC_RXN_EOT ; 
 int UDC_SETUP ; 
 int UDC_TXN_DONE ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *_udc)
{
	struct omap_udc	*udc = _udc;
	u16		irq_src;
	irqreturn_t	status = IRQ_NONE;
	unsigned long	flags;

	FUNC5(&udc->lock, flags);
	irq_src = FUNC4(UDC_IRQ_SRC);

	/* Device state change (usb ch9 stuff) */
	if (irq_src & UDC_DS_CHG) {
		FUNC1(_udc, irq_src);
		status = IRQ_HANDLED;
		irq_src &= ~UDC_DS_CHG;
	}

	/* EP0 control transfers */
	if (irq_src & (UDC_EP0_RX|UDC_SETUP|UDC_EP0_TX)) {
		FUNC3(_udc, irq_src);
		status = IRQ_HANDLED;
		irq_src &= ~(UDC_EP0_RX|UDC_SETUP|UDC_EP0_TX);
	}

	/* DMA transfer completion */
	if (use_dma && (irq_src & (UDC_TXN_DONE|UDC_RXN_CNT|UDC_RXN_EOT))) {
		FUNC2(_udc, irq_src);
		status = IRQ_HANDLED;
		irq_src &= ~(UDC_TXN_DONE|UDC_RXN_CNT|UDC_RXN_EOT);
	}

	irq_src &= ~(UDC_IRQ_SOF | UDC_EPN_TX|UDC_EPN_RX);
	if (irq_src)
		FUNC0("udc_irq, unhandled %03x\n", irq_src);
	FUNC6(&udc->lock, flags);

	return status;
}