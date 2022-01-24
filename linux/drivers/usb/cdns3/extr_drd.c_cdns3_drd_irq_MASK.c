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
typedef  int u32 ;
struct cdns3 {scalar_t__ dr_mode; TYPE_1__* otg_regs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ivect; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int OTGIEN_ID_CHANGE_INT ; 
 int OTGIEN_VBUSVALID_FALL_INT ; 
 int OTGIEN_VBUSVALID_RISE_INT ; 
 scalar_t__ USB_DR_MODE_OTG ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	irqreturn_t ret = IRQ_NONE;
	struct cdns3 *cdns = data;
	u32 reg;

	if (cdns->dr_mode != USB_DR_MODE_OTG)
		return ret;

	reg = FUNC3(&cdns->otg_regs->ivect);

	if (!reg)
		return ret;

	if (reg & OTGIEN_ID_CHANGE_INT) {
		FUNC2(cdns->dev, "OTG IRQ: new ID: %d\n",
			FUNC0(cdns));

		ret = IRQ_WAKE_THREAD;
	}

	if (reg & (OTGIEN_VBUSVALID_RISE_INT | OTGIEN_VBUSVALID_FALL_INT)) {
		FUNC2(cdns->dev, "OTG IRQ: new VBUS: %d\n",
			FUNC1(cdns));

		ret = IRQ_WAKE_THREAD;
	}

	FUNC4(~0, &cdns->otg_regs->ivect);
	return ret;
}