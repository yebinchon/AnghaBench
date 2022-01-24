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
struct scsi_ctrl_blk {int next_state; } ;
struct initio_host {int phase; scalar_t__ addr; struct scsi_ctrl_blk* active; } ;

/* Variables and functions */
#define  DATA_IN 132 
#define  DATA_OUT 131 
#define  MSG_IN 130 
 int /*<<< orphan*/  MSG_NOP ; 
#define  MSG_OUT 129 
#define  STATUS_IN 128 
 int /*<<< orphan*/  TSC_XF_FIFO_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SFifo ; 
 int FUNC0 (struct initio_host*) ; 
 int FUNC1 (struct initio_host*) ; 
 int FUNC2 (struct initio_host*) ; 
 int FUNC3 (struct initio_host*) ; 
 int FUNC4 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct initio_host*) ; 

__attribute__((used)) static int FUNC8(struct initio_host * host)
{
	struct scsi_ctrl_blk *scb = host->active;

#if DEBUG_STATE
	printk("-s6-");
#endif
	for (;;) {
		switch (host->phase) {
		case STATUS_IN:	/* Status phase                 */
			if ((FUNC2(host)) == -1)
				return -1;
			break;

		case MSG_IN:	/* Message in phase             */
			scb->next_state = 6;
			if ((FUNC1(host)) == -1)
				return -1;
			break;

		case MSG_OUT:	/* Message out phase            */
			FUNC5(MSG_NOP, host->addr + TUL_SFifo);		/* msg nop */
			FUNC5(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
			if (FUNC7(host) == -1)
				return -1;
			break;

		case DATA_IN:	/* Data in phase                */
			return FUNC3(host);

		case DATA_OUT:	/* Data out phase               */
			return FUNC4(host);

		default:
			return FUNC0(host);
		}
	}
}