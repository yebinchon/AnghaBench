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
struct scsi_ctrl_blk {int status; int /*<<< orphan*/  hastat; } ;
struct initio_host {scalar_t__ addr; int /*<<< orphan*/ * active_tc; struct scsi_ctrl_blk* active; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_BUS_FREE ; 
 int /*<<< orphan*/  HOST_SEL_TOUT ; 
 int SCB_SELECT ; 
 int /*<<< orphan*/  TSC_FLUSH_FIFO ; 
 int /*<<< orphan*/  TSC_HW_RESELECT ; 
 int /*<<< orphan*/  TSC_INITDEFAULT ; 
 scalar_t__ TUL_SConfig ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SCtrl1 ; 
 int /*<<< orphan*/  FUNC0 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC1 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC2 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(struct initio_host * host)
{
	struct scsi_ctrl_blk *scb = host->active;

	if (scb != NULL) {
		if (scb->status & SCB_SELECT) {		/* selection timeout */
			FUNC2(host, scb);
			scb->hastat = HOST_SEL_TOUT;
			FUNC0(host, scb);
		} else {	/* Unexpected bus free          */
			FUNC1(host, scb);
			scb->hastat = HOST_BUS_FREE;
			FUNC0(host, scb);
		}
		host->active = NULL;
		host->active_tc = NULL;
	}
	FUNC3(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);		/* Flush SCSI FIFO  */
	FUNC3(TSC_INITDEFAULT, host->addr + TUL_SConfig);
	FUNC3(TSC_HW_RESELECT, host->addr + TUL_SCtrl1);	/* Enable HW reselect       */
	return -1;
}