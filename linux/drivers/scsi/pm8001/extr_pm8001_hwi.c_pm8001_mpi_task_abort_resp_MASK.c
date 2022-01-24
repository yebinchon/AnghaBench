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
typedef  size_t u32 ;
struct task_status_struct {int /*<<< orphan*/  resp; int /*<<< orphan*/  stat; } ;
struct task_abort_resp {int /*<<< orphan*/  scp; int /*<<< orphan*/  tag; int /*<<< orphan*/  status; } ;
struct sas_task {int /*<<< orphan*/  (* task_done ) (struct sas_task*) ;int /*<<< orphan*/  task_state_lock; int /*<<< orphan*/  task_state_flags; struct task_status_struct task_status; } ;
struct pm8001_hba_info {struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int id; } ;
struct pm8001_ccb_info {struct pm8001_device* device; struct sas_task* task; } ;

/* Variables and functions */
#define  IO_NOT_VALID 129 
#define  IO_SUCCESS 128 
 int NCQ_ABORT_ALL_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 int /*<<< orphan*/  SAS_TASK_AT_INITIATOR ; 
 int /*<<< orphan*/  SAS_TASK_COMPLETE ; 
 int /*<<< orphan*/  SAS_TASK_STATE_DONE ; 
 int /*<<< orphan*/  SAS_TASK_STATE_PENDING ; 
 int /*<<< orphan*/  TMF_RESP_FUNC_FAILED ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct sas_task*) ; 

int FUNC11(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct sas_task *t;
	struct pm8001_ccb_info *ccb;
	unsigned long flags;
	u32 status ;
	u32 tag, scp;
	struct task_status_struct *ts;
	struct pm8001_device *pm8001_dev;

	struct task_abort_resp *pPayload =
		(struct task_abort_resp *)(piomb + 4);

	status = FUNC2(pPayload->status);
	tag = FUNC2(pPayload->tag);
	if (!tag) {
		FUNC1(pm8001_ha,
			FUNC5(" TAG NULL. RETURNING !!!"));
		return -1;
	}

	scp = FUNC2(pPayload->scp);
	ccb = &pm8001_ha->ccb_info[tag];
	t = ccb->task;
	pm8001_dev = ccb->device; /* retrieve device */

	if (!t)	{
		FUNC1(pm8001_ha,
			FUNC5(" TASK NULL. RETURNING !!!"));
		return -1;
	}
	ts = &t->task_status;
	if (status != 0)
		FUNC1(pm8001_ha,
			FUNC5("task abort failed status 0x%x ,"
			"tag = 0x%x, scp= 0x%x\n", status, tag, scp));
	switch (status) {
	case IO_SUCCESS:
		FUNC0(pm8001_ha, FUNC5("IO_SUCCESS\n"));
		ts->resp = SAS_TASK_COMPLETE;
		ts->stat = SAM_STAT_GOOD;
		break;
	case IO_NOT_VALID:
		FUNC0(pm8001_ha, FUNC5("IO_NOT_VALID\n"));
		ts->resp = TMF_RESP_FUNC_FAILED;
		break;
	}
	FUNC8(&t->task_state_lock, flags);
	t->task_state_flags &= ~SAS_TASK_STATE_PENDING;
	t->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
	t->task_state_flags |= SAS_TASK_STATE_DONE;
	FUNC9(&t->task_state_lock, flags);
	FUNC4(pm8001_ha, t, ccb, tag);
	FUNC3();

	if (pm8001_dev->id & NCQ_ABORT_ALL_FLAG) {
		FUNC6(pm8001_ha, tag);
		FUNC7(t);
		/* clear the flag */
		pm8001_dev->id &= 0xBFFFFFFF;
	} else
		t->task_done(t);

	return 0;
}