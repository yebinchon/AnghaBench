#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct mbox_out {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  state; int /*<<< orphan*/  idx; scalar_t__ raw_mbox; } ;
typedef  TYPE_3__ scb_t ;
struct TYPE_13__ {int busy; scalar_t__ ack; scalar_t__ poll; } ;
struct TYPE_12__ {int cmd; int xferaddr; int /*<<< orphan*/  cmdid; } ;
struct TYPE_15__ {TYPE_2__ m_in; TYPE_1__ m_out; } ;
typedef  TYPE_4__ mbox_t ;
struct TYPE_16__ {int xfer_segment_lo; int /*<<< orphan*/  xfer_segment_hi; } ;
typedef  TYPE_5__ mbox64_t ;
struct TYPE_17__ {int flag; int mbox_dma; int /*<<< orphan*/  pend_cmds; TYPE_4__* mbox; TYPE_5__* mbox64; } ;
typedef  TYPE_6__ adapter_t ;

/* Variables and functions */
 int BOARD_MEMMAP ; 
#define  MEGA_MBOXCMD_EXTPTHRU 131 
#define  MEGA_MBOXCMD_LREAD64 130 
#define  MEGA_MBOXCMD_LWRITE64 129 
#define  MEGA_MBOXCMD_PASSTHRU64 128 
 int /*<<< orphan*/  SCB_ISSUED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned int max_mbox_busy_wait ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(adapter_t *adapter, scb_t *scb)
{
	volatile mbox64_t	*mbox64 = adapter->mbox64;
	volatile mbox_t		*mbox = adapter->mbox;
	unsigned int	i = 0;

	if(FUNC7(mbox->m_in.busy)) {
		do {
			FUNC6(1);
			i++;
		} while( mbox->m_in.busy && (i < max_mbox_busy_wait) );

		if(mbox->m_in.busy) return -1;
	}

	/* Copy mailbox data into host structure */
	FUNC5((char *)&mbox->m_out, (char *)scb->raw_mbox, 
			sizeof(struct mbox_out));

	mbox->m_out.cmdid = scb->idx;	/* Set cmdid */
	mbox->m_in.busy = 1;		/* Set busy */


	/*
	 * Increment the pending queue counter
	 */
	FUNC1(&adapter->pend_cmds);

	switch (mbox->m_out.cmd) {
	case MEGA_MBOXCMD_LREAD64:
	case MEGA_MBOXCMD_LWRITE64:
	case MEGA_MBOXCMD_PASSTHRU64:
	case MEGA_MBOXCMD_EXTPTHRU:
		mbox64->xfer_segment_lo = mbox->m_out.xferaddr;
		mbox64->xfer_segment_hi = 0;
		mbox->m_out.xferaddr = 0xFFFFFFFF;
		break;
	default:
		mbox64->xfer_segment_lo = 0;
		mbox64->xfer_segment_hi = 0;
	}

	/*
	 * post the command
	 */
	scb->state |= SCB_ISSUED;

	if( FUNC4(adapter->flag & BOARD_MEMMAP) ) {
		mbox->m_in.poll = 0;
		mbox->m_in.ack = 0;
		FUNC0(adapter, adapter->mbox_dma | 0x1);
	}
	else {
		FUNC2(adapter);
		FUNC3(adapter);
	}

	return 0;
}