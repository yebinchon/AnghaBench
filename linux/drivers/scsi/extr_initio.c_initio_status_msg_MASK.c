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
typedef  scalar_t__ u8 ;
struct scsi_ctrl_blk {int tastat; } ;
struct initio_host {scalar_t__ phase; int jsstatus0; scalar_t__ addr; struct scsi_ctrl_blk* active; } ;

/* Variables and functions */
 scalar_t__ MSG_IN ; 
 scalar_t__ MSG_LINK_COMP ; 
 scalar_t__ MSG_LINK_FLAG ; 
 int /*<<< orphan*/  MSG_NOP ; 
 scalar_t__ MSG_OUT ; 
 int /*<<< orphan*/  MSG_PARITY ; 
 int /*<<< orphan*/  TSC_CMD_COMP ; 
 int /*<<< orphan*/  TSC_FLUSH_FIFO ; 
 int /*<<< orphan*/  TSC_MSG_ACCEPT ; 
 int /*<<< orphan*/  TSC_XF_FIFO_OUT ; 
 int TSS_PAR_ERROR ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SFifo ; 
 void* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct initio_host*) ; 
 int FUNC2 (struct initio_host*) ; 
 int FUNC3 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct initio_host*) ; 

int FUNC6(struct initio_host * host)
{				/* status & MSG_IN */
	struct scsi_ctrl_blk *scb = host->active;
	u8 msg;

	FUNC4(TSC_CMD_COMP, host->addr + TUL_SCmd);
	if (FUNC5(host) == -1)
		return -1;

	/* get status */
	scb->tastat = FUNC0(host->addr + TUL_SFifo);

	if (host->phase == MSG_OUT) {
		if (host->jsstatus0 & TSS_PAR_ERROR)
			FUNC4(MSG_PARITY, host->addr + TUL_SFifo);
		else
			FUNC4(MSG_NOP, host->addr + TUL_SFifo);
		FUNC4(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
		return FUNC5(host);
	}
	if (host->phase == MSG_IN) {
		msg = FUNC0(host->addr + TUL_SFifo);
		if (host->jsstatus0 & TSS_PAR_ERROR) {	/* Parity error                 */
			if ((FUNC2(host)) == -1)
				return -1;
			if (host->phase != MSG_OUT)
				return FUNC1(host);
			FUNC4(MSG_PARITY, host->addr + TUL_SFifo);
			FUNC4(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
			return FUNC5(host);
		}
		if (msg == 0) {	/* Command complete             */

			if ((scb->tastat & 0x18) == 0x10)	/* No link support              */
				return FUNC1(host);
			FUNC4(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
			FUNC4(TSC_MSG_ACCEPT, host->addr + TUL_SCmd);
			return FUNC3(host);

		}
		if (msg == MSG_LINK_COMP || msg == MSG_LINK_FLAG) {
			if ((scb->tastat & 0x18) == 0x10)
				return FUNC2(host);
		}
	}
	return FUNC1(host);
}