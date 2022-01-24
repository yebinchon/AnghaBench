#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  quiescent; TYPE_2__* mbox; int /*<<< orphan*/  pend_cmds; } ;
typedef  TYPE_3__ adapter_t ;
struct TYPE_10__ {int numstatus; int status; scalar_t__ completed; } ;
struct TYPE_11__ {TYPE_1__ m_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_FIRMWARE_STATUS ; 
 int VALID_INTR_BYTE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t
FUNC13(int irq, void *devp)
{
	adapter_t	*adapter = devp;
	unsigned long	flags;
	u8	status;
	u8	nstatus;
	u8	completed[MAX_FIRMWARE_STATUS];
	u8	byte;
	int	handled = 0;


	/*
	 * loop till F/W has more commands for us to complete.
	 */
	FUNC11(&adapter->lock, flags);

	do {
		/* Check if a valid interrupt is pending */
		byte = FUNC5(adapter);
		if( (byte & VALID_INTR_BYTE) == 0 ) {
			/*
			 * No more pending commands
			 */
			goto out_unlock;
		}
		FUNC10(adapter, byte);

		while((nstatus = (volatile u8)adapter->mbox->m_in.numstatus)
				== 0xFF)
			FUNC3();
		adapter->mbox->m_in.numstatus = 0xFF;

		status = adapter->mbox->m_in.status;

		/*
		 * decrement the pending queue counter
		 */
		FUNC2(nstatus, &adapter->pend_cmds);

		FUNC9(completed, (void *)adapter->mbox->m_in.completed, 
				nstatus);

		/* Acknowledge interrupt */
		FUNC4(adapter);

		FUNC6(adapter, completed, nstatus, status);

		FUNC7(adapter);

		handled = 1;

		/* Loop through any pending requests */
		if(FUNC1(&adapter->quiescent) == 0) {
			FUNC8(adapter);
		}

	} while(1);

 out_unlock:

	FUNC12(&adapter->lock, flags);

	return FUNC0(handled);
}