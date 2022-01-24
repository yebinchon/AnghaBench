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
struct TYPE_10__ {int /*<<< orphan*/  disconnected; } ;
struct TYPE_8__ {scalar_t__ aborting; scalar_t__ disconnectable; } ;
struct TYPE_11__ {int /*<<< orphan*/ * origSCpnt; int /*<<< orphan*/ * rstSCpnt; int /*<<< orphan*/ * reqSCpnt; int /*<<< orphan*/ * SCpnt; TYPE_3__ queues; TYPE_2__* device; TYPE_1__ scsi; int /*<<< orphan*/  busyluns; } ;
struct TYPE_9__ {int parity_check; scalar_t__ parity_enabled; } ;
typedef  TYPE_4__ FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(FAS216_Info *info)
{
	int i;

	FUNC1(info);

	FUNC0(info);

	/*
	 * Clear out all stale info in our state structure
	 */
	FUNC2(info->busyluns, 0, sizeof(info->busyluns));
	info->scsi.disconnectable = 0;
	info->scsi.aborting = 0;

	for (i = 0; i < 8; i++) {
		info->device[i].parity_enabled	= 0;
		info->device[i].parity_check	= 1;
	}

	/*
	 * Drain all commands on disconnected queue
	 */
	while (FUNC3(&info->queues.disconnected) != NULL);

	/*
	 * Remove executing commands.
	 */
	info->SCpnt     = NULL;
	info->reqSCpnt  = NULL;
	info->rstSCpnt  = NULL;
	info->origSCpnt = NULL;
}