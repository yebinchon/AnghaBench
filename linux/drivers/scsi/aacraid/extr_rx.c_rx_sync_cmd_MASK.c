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
typedef  int /*<<< orphan*/  u32 ;
struct aac_dev {int OIMR; TYPE_1__* IndexRegs; } ;
struct TYPE_4__ {int /*<<< orphan*/  OIMR; } ;
struct TYPE_3__ {int /*<<< orphan*/ * Mailbox; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int INBOUNDDOORBELL_0 ; 
 int /*<<< orphan*/  InboundDoorbellReg ; 
 TYPE_2__ MUnit ; 
 int OUTBOUNDDOORBELL_0 ; 
 int /*<<< orphan*/  OutboundDoorbellReg ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct aac_dev *dev, u32 command,
	u32 p1, u32 p2, u32 p3, u32 p4, u32 p5, u32 p6,
	u32 *status, u32 * r1, u32 * r2, u32 * r3, u32 * r4)
{
	unsigned long start;
	int ok;
	/*
	 *	Write the command into Mailbox 0
	 */
	FUNC10(command, &dev->IndexRegs->Mailbox[0]);
	/*
	 *	Write the parameters into Mailboxes 1 - 6
	 */
	FUNC10(p1, &dev->IndexRegs->Mailbox[1]);
	FUNC10(p2, &dev->IndexRegs->Mailbox[2]);
	FUNC10(p3, &dev->IndexRegs->Mailbox[3]);
	FUNC10(p4, &dev->IndexRegs->Mailbox[4]);
	/*
	 *	Clear the synch command doorbell to start on a clean slate.
	 */
	FUNC6(dev, OutboundDoorbellReg, OUTBOUNDDOORBELL_0);
	/*
	 *	Disable doorbell interrupts
	 */
	FUNC5(dev, MUnit.OIMR, dev->OIMR = 0xff);
	/*
	 *	Force the completion of the mask register write before issuing
	 *	the interrupt.
	 */
	FUNC3 (dev, MUnit.OIMR);
	/*
	 *	Signal that there is a new synch command
	 */
	FUNC6(dev, InboundDoorbellReg, INBOUNDDOORBELL_0);

	ok = 0;
	start = jiffies;

	/*
	 *	Wait up to 30 seconds
	 */
	while (FUNC7(jiffies, start+30*HZ)) 
	{
		FUNC8(5);	/* Delay 5 microseconds to let Mon960 get info. */
		/*
		 *	Mon960 will set doorbell0 bit when it has completed the command.
		 */
		if (FUNC4(dev, OutboundDoorbellReg) & OUTBOUNDDOORBELL_0) {
			/*
			 *	Clear the doorbell.
			 */
			FUNC6(dev, OutboundDoorbellReg, OUTBOUNDDOORBELL_0);
			ok = 1;
			break;
		}
		/*
		 *	Yield the processor in case we are slow 
		 */
		FUNC1(1);
	}
	if (FUNC9(ok != 1)) {
		/*
		 *	Restore interrupt mask even though we timed out
		 */
		FUNC0(dev);
		return -ETIMEDOUT;
	}
	/*
	 *	Pull the synch status from Mailbox 0.
	 */
	if (status)
		*status = FUNC2(&dev->IndexRegs->Mailbox[0]);
	if (r1)
		*r1 = FUNC2(&dev->IndexRegs->Mailbox[1]);
	if (r2)
		*r2 = FUNC2(&dev->IndexRegs->Mailbox[2]);
	if (r3)
		*r3 = FUNC2(&dev->IndexRegs->Mailbox[3]);
	if (r4)
		*r4 = FUNC2(&dev->IndexRegs->Mailbox[4]);
	/*
	 *	Clear the synch command doorbell.
	 */
	FUNC6(dev, OutboundDoorbellReg, OUTBOUNDDOORBELL_0);
	/*
	 *	Restore interrupt mask
	 */
	FUNC0(dev);
	return 0;

}