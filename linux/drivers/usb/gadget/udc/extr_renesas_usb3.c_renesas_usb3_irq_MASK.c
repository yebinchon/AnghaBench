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
struct renesas_usb3 {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AXI_INT_DMAINT ; 
 int AXI_INT_EPCINT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  USB3_AXI_INT_STA ; 
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*) ; 
 int FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_usb3)
{
	struct renesas_usb3 *usb3 = _usb3;
	irqreturn_t ret = IRQ_NONE;
	u32 axi_int_sta = FUNC2(usb3, USB3_AXI_INT_STA);

	if (axi_int_sta & AXI_INT_DMAINT) {
		FUNC0(usb3);
		ret = IRQ_HANDLED;
	}

	if (axi_int_sta & AXI_INT_EPCINT) {
		FUNC1(usb3);
		ret = IRQ_HANDLED;
	}

	return ret;
}