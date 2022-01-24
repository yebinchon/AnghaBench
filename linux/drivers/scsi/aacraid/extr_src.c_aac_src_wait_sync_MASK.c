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
struct aac_dev {TYPE_1__* IndexRegs; scalar_t__ msi_enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  ODR_C; } ;
struct TYPE_3__ {int /*<<< orphan*/ * Mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_CLEAR_SYNC_BIT ; 
 int HZ ; 
 TYPE_2__ MUnit ; 
 int OUTBOUNDDOORBELL_0 ; 
 int SRC_ODR_SHIFT ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aac_dev*) ; 
 unsigned long jiffies ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct aac_dev *dev, int *status)
{
	unsigned long start = jiffies;
	unsigned long usecs = 0;
	int delay = 5 * HZ;
	int rc = 1;

	while (FUNC4(jiffies, start+delay)) {
		/*
		 * Delay 5 microseconds to let Mon960 get info.
		 */
		FUNC5(5);

		/*
		 * Mon960 will set doorbell0 bit when it has completed the
		 * command.
		 */
		if (FUNC1(dev) & OUTBOUNDDOORBELL_0) {
			/*
			 * Clear: the doorbell.
			 */
			if (dev->msi_enabled)
				FUNC0(dev, AAC_CLEAR_SYNC_BIT);
			else
				FUNC3(dev, MUnit.ODR_C,
					OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);
			rc = 0;

			break;
		}

		/*
		 * Yield the processor in case we are slow
		 */
		usecs = 1 * USEC_PER_MSEC;
		FUNC6(usecs, usecs + 50);
	}
	/*
	 * Pull the synch status from Mailbox 0.
	 */
	if (status && !rc) {
		status[0] = FUNC2(&dev->IndexRegs->Mailbox[0]);
		status[1] = FUNC2(&dev->IndexRegs->Mailbox[1]);
		status[2] = FUNC2(&dev->IndexRegs->Mailbox[2]);
		status[3] = FUNC2(&dev->IndexRegs->Mailbox[3]);
		status[4] = FUNC2(&dev->IndexRegs->Mailbox[4]);
	}

	return rc;
}