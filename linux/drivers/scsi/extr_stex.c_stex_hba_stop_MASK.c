#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct st_msg_header {int* cdb; } ;
struct st_hba {scalar_t__ cardtype; int supports_pm; void* mu_status; TYPE_2__* ccb; TYPE_1__* host; int /*<<< orphan*/  (* send ) (struct st_hba*,struct st_msg_header*,size_t) ;int /*<<< orphan*/  rq_size; struct st_msg_header* (* alloc_rq ) (struct st_hba*) ;} ;
struct req_msg {int* cdb; } ;
struct TYPE_4__ {int req_type; int /*<<< orphan*/ * sense_buffer; scalar_t__ sense_bufflen; scalar_t__ sg_count; int /*<<< orphan*/ * cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int CONTROLLER_CMD ; 
 void* CTLR_CONFIG_CMD ; 
 int CTLR_POWER_SAVING ; 
 int CTLR_POWER_STATE_CHANGE ; 
 int CTLR_SHUTDOWN ; 
 unsigned long HZ ; 
 void* MGT_CMD ; 
 void* MGT_CMD_SIGNATURE ; 
 void* MU_STATE_STOP ; 
 int PASSTHRU_REQ_TYPE ; 
 int PMIC_SHUTDOWN ; 
 int ST_IGNORED ; 
 unsigned long ST_INTERNAL_TIMEOUT ; 
 int ST_NOTHANDLED ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct st_msg_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ st_P3 ; 
 scalar_t__ st_yel ; 
 scalar_t__ st_yosemite ; 
 struct st_msg_header* FUNC4 (struct st_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct st_hba*,struct st_msg_header*,size_t) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct st_hba *hba, int st_sleep_mic)
{
	struct req_msg *req;
	struct st_msg_header *msg_h;
	unsigned long flags;
	unsigned long before;
	u16 tag = 0;

	FUNC2(hba->host->host_lock, flags);

	if ((hba->cardtype == st_yel || hba->cardtype == st_P3) &&
		hba->supports_pm == 1) {
		if (st_sleep_mic == ST_NOTHANDLED) {
			FUNC3(hba->host->host_lock, flags);
			return;
		}
	}
	req = hba->alloc_rq(hba);
	if (hba->cardtype == st_yel || hba->cardtype == st_P3) {
		msg_h = (struct st_msg_header *)req - 1;
		FUNC0(msg_h, 0, hba->rq_size);
	} else
		FUNC0(req, 0, hba->rq_size);

	if ((hba->cardtype == st_yosemite || hba->cardtype == st_yel
		|| hba->cardtype == st_P3)
		&& st_sleep_mic == ST_IGNORED) {
		req->cdb[0] = MGT_CMD;
		req->cdb[1] = MGT_CMD_SIGNATURE;
		req->cdb[2] = CTLR_CONFIG_CMD;
		req->cdb[3] = CTLR_SHUTDOWN;
	} else if ((hba->cardtype == st_yel || hba->cardtype == st_P3)
		&& st_sleep_mic != ST_IGNORED) {
		req->cdb[0] = MGT_CMD;
		req->cdb[1] = MGT_CMD_SIGNATURE;
		req->cdb[2] = CTLR_CONFIG_CMD;
		req->cdb[3] = PMIC_SHUTDOWN;
		req->cdb[4] = st_sleep_mic;
	} else {
		req->cdb[0] = CONTROLLER_CMD;
		req->cdb[1] = CTLR_POWER_STATE_CHANGE;
		req->cdb[2] = CTLR_POWER_SAVING;
	}
	hba->ccb[tag].cmd = NULL;
	hba->ccb[tag].sg_count = 0;
	hba->ccb[tag].sense_bufflen = 0;
	hba->ccb[tag].sense_buffer = NULL;
	hba->ccb[tag].req_type = PASSTHRU_REQ_TYPE;
	hba->send(hba, req, tag);
	FUNC3(hba->host->host_lock, flags);
	before = jiffies;
	while (hba->ccb[tag].req_type & PASSTHRU_REQ_TYPE) {
		if (FUNC6(jiffies, before + ST_INTERNAL_TIMEOUT * HZ)) {
			hba->ccb[tag].req_type = 0;
			hba->mu_status = MU_STATE_STOP;
			return;
		}
		FUNC1(1);
	}
	hba->mu_status = MU_STATE_STOP;
}