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
struct target_control {int js_period; } ;
struct scsi_ctrl_blk {int flags; int /*<<< orphan*/  hastat; } ;
struct initio_host {scalar_t__ phase; scalar_t__ addr; struct target_control* active_tc; struct scsi_ctrl_blk* active; } ;

/* Variables and functions */
 scalar_t__ DATA_OUT ; 
 int /*<<< orphan*/  HOST_DO_DU ; 
 int SCF_DIR ; 
 int SCF_NO_DCHK ; 
 int /*<<< orphan*/  TSC_FLUSH_FIFO ; 
 int /*<<< orphan*/  TSC_HW_RESELECT ; 
 int TSC_WIDE_SCSI ; 
 int /*<<< orphan*/  TSC_XF_FIFO_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SCnt0 ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SCtrl1 ; 
 scalar_t__ TUL_SFifo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (struct initio_host*) ; 

int FUNC3(struct initio_host * host)
{
	struct scsi_ctrl_blk *scb = host->active;
	struct target_control *active_tc = host->active_tc;

	if ((scb->flags & SCF_DIR) != SCF_NO_DCHK)
		scb->hastat = HOST_DO_DU;	/* over run             */
	for (;;) {
		if (active_tc->js_period & TSC_WIDE_SCSI)
			FUNC1(2, host->addr + TUL_SCnt0);
		else
			FUNC1(1, host->addr + TUL_SCnt0);

		FUNC0(0, host->addr + TUL_SFifo);
		FUNC0(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
		if ((FUNC2(host)) == -1)
			return -1;
		if (host->phase != DATA_OUT) {	/* Disable wide CPU to allow read 16 bits */
			FUNC0(TSC_HW_RESELECT, host->addr + TUL_SCtrl1);
			FUNC0(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
			return 6;
		}
	}
}