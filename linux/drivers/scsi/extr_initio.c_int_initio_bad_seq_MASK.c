#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_ctrl_blk {int /*<<< orphan*/  hastat; } ;
struct initio_host {int max_tar; TYPE_1__* targets; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_BAD_PHAS ; 
 int TCF_SYNC_DONE ; 
 int TCF_WDTR_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 struct scsi_ctrl_blk* FUNC1 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct initio_host*,int) ; 

__attribute__((used)) static int FUNC3(struct initio_host * host)
{				/* target wrong phase           */
	struct scsi_ctrl_blk *scb;
	int i;

	FUNC2(host, 10);

	while ((scb = FUNC1(host)) != NULL) {
		scb->hastat = HOST_BAD_PHAS;
		FUNC0(host, scb);
	}
	for (i = 0; i < host->max_tar; i++)
		host->targets[i].flags &= ~(TCF_SYNC_DONE | TCF_WDTR_DONE);
	return -1;
}