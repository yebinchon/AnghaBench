#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_10__ {int /*<<< orphan*/  list; int /*<<< orphan*/  state; } ;
typedef  TYPE_3__ scb_t ;
struct TYPE_11__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  quiescent; int /*<<< orphan*/  pending_list; } ;
typedef  TYPE_4__ adapter_t ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_8__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCB_PENDQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,struct scsi_cmnd*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct scsi_cmnd *scmd, void (*done)(struct scsi_cmnd *))
{
	adapter_t	*adapter;
	scb_t	*scb;
	int	busy=0;
	unsigned long flags;

	adapter = (adapter_t *)scmd->device->host->hostdata;

	scmd->scsi_done = done;


	/*
	 * Allocate and build a SCB request
	 * busy flag will be set if mega_build_cmd() command could not
	 * allocate scb. We will return non-zero status in that case.
	 * NOTE: scb can be null even though certain commands completed
	 * successfully, e.g., MODE_SENSE and TEST_UNIT_READY, we would
	 * return 0 in that case.
	 */

	FUNC4(&adapter->lock, flags);
	scb = FUNC2(adapter, scmd, &busy);
	if (!scb)
		goto out;

	scb->state |= SCB_PENDQ;
	FUNC1(&scb->list, &adapter->pending_list);

	/*
	 * Check if the HBA is in quiescent state, e.g., during a
	 * delete logical drive opertion. If it is, don't run
	 * the pending_list.
	 */
	if (FUNC0(&adapter->quiescent) == 0)
		FUNC3(adapter);

	busy = 0;
 out:
	FUNC5(&adapter->lock, flags);
	return busy;
}