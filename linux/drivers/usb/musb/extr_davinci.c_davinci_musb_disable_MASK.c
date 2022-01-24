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
struct musb {int /*<<< orphan*/  ctrl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_USB_EOI_REG ; 
 int /*<<< orphan*/  DAVINCI_USB_INT_MASK_CLR_REG ; 
 int DAVINCI_USB_RXINT_MASK ; 
 int DAVINCI_USB_TXINT_MASK ; 
 int DAVINCI_USB_USBINT_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  dma_off ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct musb *musb)
{
	/* because we don't set CTRLR.UINT, "important" to:
	 *  - not read/write INTRUSB/INTRUSBE
	 *  - (except during initial setup, as workaround)
	 *  - use INTSETR/INTCLRR instead
	 */
	FUNC2(musb->ctrl_base, DAVINCI_USB_INT_MASK_CLR_REG,
			  DAVINCI_USB_USBINT_MASK
			| DAVINCI_USB_TXINT_MASK
			| DAVINCI_USB_RXINT_MASK);
	FUNC2(musb->ctrl_base, DAVINCI_USB_EOI_REG, 0);

	if (FUNC1() && !dma_off)
		FUNC0("dma still active\n");
}