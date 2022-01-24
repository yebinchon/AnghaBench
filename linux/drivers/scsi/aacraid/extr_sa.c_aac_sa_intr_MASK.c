#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct aac_dev {TYPE_1__* queues; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  PRISETIRQMASK; } ;
struct TYPE_3__ {int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 unsigned short DOORBELL_1 ; 
 unsigned short DOORBELL_2 ; 
 unsigned short DOORBELL_3 ; 
 unsigned short DOORBELL_4 ; 
 int /*<<< orphan*/  DoorbellClrReg_p ; 
 int /*<<< orphan*/  DoorbellReg_p ; 
 int /*<<< orphan*/  DoorbellReg_s ; 
 size_t HostNormCmdQueue ; 
 size_t HostNormRespQueue ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  Mailbox5 ; 
 unsigned short PrintfDone ; 
 unsigned short PrintfReady ; 
 TYPE_2__ SaDbCSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC4 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_dev*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct aac_dev *dev = dev_id;
	unsigned short intstat, mask;

	intstat = FUNC4(dev, DoorbellReg_p);
	/*
	 *	Read mask and invert because drawbridge is reversed.
	 *	This allows us to only service interrupts that have been enabled.
	 */
	mask = ~(FUNC4(dev, SaDbCSR.PRISETIRQMASK));

	/* Check to see if this is our interrupt.  If it isn't just return */

	if (intstat & mask) {
		if (intstat & PrintfReady) {
			FUNC1(dev, FUNC3(dev, Mailbox5));
			FUNC5(dev, DoorbellClrReg_p, PrintfReady); /* clear PrintfReady */
			FUNC5(dev, DoorbellReg_s, PrintfDone);
		} else if (intstat & DOORBELL_1) {	// dev -> Host Normal Command Ready
			FUNC5(dev, DoorbellClrReg_p, DOORBELL_1);
			FUNC0(&dev->queues->queue[HostNormCmdQueue]);
		} else if (intstat & DOORBELL_2) {	// dev -> Host Normal Response Ready
			FUNC5(dev, DoorbellClrReg_p, DOORBELL_2);
			FUNC2(&dev->queues->queue[HostNormRespQueue]);
		} else if (intstat & DOORBELL_3) {	// dev -> Host Normal Command Not Full
			FUNC5(dev, DoorbellClrReg_p, DOORBELL_3);
		} else if (intstat & DOORBELL_4) {	// dev -> Host Normal Response Not Full
			FUNC5(dev, DoorbellClrReg_p, DOORBELL_4);
		}
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}