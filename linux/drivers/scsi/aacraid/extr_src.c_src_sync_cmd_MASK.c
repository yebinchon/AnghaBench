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
typedef  scalar_t__ u32 ;
struct aac_dev {int OIMR; int max_msix; scalar_t__ msi_enabled; TYPE_1__* IndexRegs; int /*<<< orphan*/  in_soft_reset; int /*<<< orphan*/  sync_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  ODR_C; int /*<<< orphan*/  IDR; int /*<<< orphan*/  OIMR; } ;
struct TYPE_3__ {int /*<<< orphan*/ * Mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_CLEAR_SYNC_BIT ; 
 int ETIMEDOUT ; 
 scalar_t__ GET_COMM_PREFERRED_SETTINGS ; 
 int HZ ; 
 int INBOUNDDOORBELL_0 ; 
 scalar_t__ IOP_RESET_ALWAYS ; 
 TYPE_2__ MUnit ; 
 int OUTBOUNDDOORBELL_0 ; 
 scalar_t__ SEND_SYNCHRONOUS_FIB ; 
 int SRC_IDR_SHIFT ; 
 int SRC_ODR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aac_dev*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct aac_dev *dev, u32 command,
	u32 p1, u32 p2, u32 p3, u32 p4, u32 p5, u32 p6,
	u32 *status, u32 * r1, u32 * r2, u32 * r3, u32 * r4)
{
	unsigned long start;
	unsigned long delay;
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
	if (!dev->msi_enabled)
		FUNC6(dev,
			   MUnit.ODR_C,
			   OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);

	/*
	 *	Disable doorbell interrupts
	 */
	FUNC6(dev, MUnit.OIMR, dev->OIMR = 0xffffffff);

	/*
	 *	Force the completion of the mask register write before issuing
	 *	the interrupt.
	 */
	FUNC5(dev, MUnit.OIMR);

	/*
	 *	Signal that there is a new synch command
	 */
	FUNC6(dev, MUnit.IDR, INBOUNDDOORBELL_0 << SRC_IDR_SHIFT);

	if ((!dev->sync_mode || command != SEND_SYNCHRONOUS_FIB) &&
		!dev->in_soft_reset) {
		ok = 0;
		start = jiffies;

		if (command == IOP_RESET_ALWAYS) {
			/* Wait up to 10 sec */
			delay = 10*HZ;
		} else {
			/* Wait up to 5 minutes */
			delay = 300*HZ;
		}
		while (FUNC7(jiffies, start+delay)) {
			FUNC8(5);	/* Delay 5 microseconds to let Mon960 get info. */
			/*
			 *	Mon960 will set doorbell0 bit when it has completed the command.
			 */
			if (FUNC2(dev) & OUTBOUNDDOORBELL_0) {
				/*
				 *	Clear the doorbell.
				 */
				if (dev->msi_enabled)
					FUNC1(dev,
						AAC_CLEAR_SYNC_BIT);
				else
					FUNC6(dev,
						MUnit.ODR_C,
						OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);
				ok = 1;
				break;
			}
			/*
			 *	Yield the processor in case we are slow
			 */
			FUNC3(1);
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
			*status = FUNC4(&dev->IndexRegs->Mailbox[0]);
		if (r1)
			*r1 = FUNC4(&dev->IndexRegs->Mailbox[1]);
		if (r2)
			*r2 = FUNC4(&dev->IndexRegs->Mailbox[2]);
		if (r3)
			*r3 = FUNC4(&dev->IndexRegs->Mailbox[3]);
		if (r4)
			*r4 = FUNC4(&dev->IndexRegs->Mailbox[4]);
		if (command == GET_COMM_PREFERRED_SETTINGS)
			dev->max_msix =
				FUNC4(&dev->IndexRegs->Mailbox[5]) & 0xFFFF;
		/*
		 *	Clear the synch command doorbell.
		 */
		if (!dev->msi_enabled)
			FUNC6(dev,
				MUnit.ODR_C,
				OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);
	}

	/*
	 *	Restore interrupt mask
	 */
	FUNC0(dev);
	return 0;
}