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
struct scsi_qla_host {int /*<<< orphan*/  iocb_work; TYPE_1__* hw; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  work_list; } ;
struct qla_work_evt {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCB_WORK_ACTIVE ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(struct scsi_qla_host *vha, struct qla_work_evt *e)
{
	unsigned long flags;
	bool q = false;

	FUNC2(&vha->work_lock, flags);
	FUNC0(&e->list, &vha->work_list);

	if (!FUNC4(IOCB_WORK_ACTIVE, &vha->dpc_flags))
		q = true;

	FUNC3(&vha->work_lock, flags);

	if (q)
		FUNC1(vha->hw->wq, &vha->iocb_work);

	return QLA_SUCCESS;
}