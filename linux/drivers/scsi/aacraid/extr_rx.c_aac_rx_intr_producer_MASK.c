#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u8 ;
struct aac_dev {unsigned long OIMR; TYPE_2__* queues; TYPE_1__* IndexRegs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  ODR; int /*<<< orphan*/  OISR; } ;
struct TYPE_5__ {int /*<<< orphan*/ * queue; } ;
struct TYPE_4__ {int /*<<< orphan*/ * Mailbox; } ;

/* Variables and functions */
 unsigned long DoorBellAdapterNormCmdNotFull ; 
 unsigned long DoorBellAdapterNormCmdReady ; 
 unsigned long DoorBellAdapterNormRespNotFull ; 
 unsigned long DoorBellAdapterNormRespReady ; 
 unsigned long DoorBellPrintfDone ; 
 unsigned long DoorBellPrintfReady ; 
 size_t HostNormCmdQueue ; 
 size_t HostNormRespQueue ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  InboundDoorbellReg ; 
 TYPE_3__ MUnit ; 
 int /*<<< orphan*/  OutboundDoorbellReg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct aac_dev *dev = dev_id;
	unsigned long bellbits;
	u8 intstat = FUNC5(dev, MUnit.OISR);

	/*
	 *	Read mask and invert because drawbridge is reversed.
	 *	This allows us to only service interrupts that have
	 *	been enabled.
	 *	Check to see if this is our interrupt.  If it isn't just return
	 */
	if (FUNC3(intstat & ~(dev->OIMR))) {
		bellbits = FUNC6(dev, OutboundDoorbellReg);
		if (FUNC8(bellbits & DoorBellPrintfReady)) {
			FUNC1(dev, FUNC4 (&dev->IndexRegs->Mailbox[5]));
			FUNC7(dev, MUnit.ODR,DoorBellPrintfReady);
			FUNC7(dev, InboundDoorbellReg,DoorBellPrintfDone);
		}
		else if (FUNC8(bellbits & DoorBellAdapterNormCmdReady)) {
			FUNC7(dev, MUnit.ODR, DoorBellAdapterNormCmdReady);
			FUNC0(&dev->queues->queue[HostNormCmdQueue]);
		}
		else if (FUNC3(bellbits & DoorBellAdapterNormRespReady)) {
			FUNC7(dev, MUnit.ODR,DoorBellAdapterNormRespReady);
			FUNC2(&dev->queues->queue[HostNormRespQueue]);
		}
		else if (FUNC8(bellbits & DoorBellAdapterNormCmdNotFull)) {
			FUNC7(dev, MUnit.ODR, DoorBellAdapterNormCmdNotFull);
		}
		else if (FUNC8(bellbits & DoorBellAdapterNormRespNotFull)) {
			FUNC7(dev, MUnit.ODR, DoorBellAdapterNormCmdNotFull);
			FUNC7(dev, MUnit.ODR, DoorBellAdapterNormRespNotFull);
		}
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}