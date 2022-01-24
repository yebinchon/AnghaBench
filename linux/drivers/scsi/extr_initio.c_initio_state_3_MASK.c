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
struct target_control {int flags; } ;
struct scsi_ctrl_blk {int* cdb; int next_state; scalar_t__ cdblen; } ;
struct initio_host {int phase; scalar_t__ addr; struct target_control* active_tc; struct scsi_ctrl_blk* active; } ;

/* Variables and functions */
#define  CMD_OUT 131 
 int MAX_OFFSET ; 
 int MSG_EXTEND ; 
#define  MSG_IN 130 
 int MSG_NOP ; 
#define  MSG_OUT 129 
#define  STATUS_IN 128 
 int TCF_NO_SYNC_NEGO ; 
 size_t TCF_SCSI_RATE ; 
 int TCF_SYNC_DONE ; 
 int TSC_FLUSH_FIFO ; 
 int TSC_SET_ACK ; 
 int TSC_XF_FIFO_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SFifo ; 
 scalar_t__ TUL_SSignal ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct initio_host*) ; 
 int FUNC2 (struct initio_host*) ; 
 int* initio_rate_tbl ; 
 int FUNC3 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct initio_host*) ; 

__attribute__((used)) static int FUNC7(struct initio_host * host)
{
	struct scsi_ctrl_blk *scb = host->active;
	struct target_control *active_tc = host->active_tc;
	int i;

#if DEBUG_STATE
	printk("-s3-");
#endif
	for (;;) {
		switch (host->phase) {
		case CMD_OUT:	/* Command out phase            */
			for (i = 0; i < (int) scb->cdblen; i++)
				FUNC4(scb->cdb[i], host->addr + TUL_SFifo);
			FUNC4(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
			if (FUNC6(host) == -1)
				return -1;
			if (host->phase == CMD_OUT)
				return FUNC1(host);
			return 4;

		case MSG_IN:	/* Message in phase             */
			scb->next_state = 3;
			if (FUNC2(host) == -1)
				return -1;
			break;

		case STATUS_IN:	/* Status phase                 */
			if (FUNC3(host) == -1)
				return -1;
			break;

		case MSG_OUT:	/* Message out phase            */
			if (active_tc->flags & (TCF_SYNC_DONE | TCF_NO_SYNC_NEGO)) {
				FUNC4(MSG_NOP, host->addr + TUL_SFifo);		/* msg nop */
				FUNC4(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
				if (FUNC6(host) == -1)
					return -1;
			} else {
				active_tc->flags |= TCF_SYNC_DONE;

				FUNC4(MSG_EXTEND, host->addr + TUL_SFifo);
				FUNC4(3, host->addr + TUL_SFifo);	/* ext. msg len */
				FUNC4(1, host->addr + TUL_SFifo);	/* sync request */
				FUNC4(initio_rate_tbl[active_tc->flags & TCF_SCSI_RATE], host->addr + TUL_SFifo);
				FUNC4(MAX_OFFSET, host->addr + TUL_SFifo);	/* REQ/ACK offset */
				FUNC4(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
				if (FUNC6(host) == -1)
					return -1;
				FUNC4(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
				FUNC4(FUNC0(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7), host->addr + TUL_SSignal);

			}
			break;
		default:
			return FUNC1(host);
		}
	}
}