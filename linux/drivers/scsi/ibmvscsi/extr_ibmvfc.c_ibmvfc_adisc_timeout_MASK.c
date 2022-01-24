#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; void* opcode; void* version; } ;
struct ibmvfc_tmf {void* cancel_key; int /*<<< orphan*/  scsi_id; TYPE_2__ common; } ;
struct ibmvfc_target {scalar_t__ action; int cancel_key; int /*<<< orphan*/  kref; int /*<<< orphan*/  scsi_id; struct ibmvfc_host* vhost; } ;
struct ibmvfc_host {scalar_t__ abort_threads; scalar_t__ state; scalar_t__ action; TYPE_3__* host; } ;
struct TYPE_4__ {struct ibmvfc_tmf tmf; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 scalar_t__ IBMVFC_HOST_ACTION_QUERY_TGTS ; 
 scalar_t__ IBMVFC_INITIALIZING ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 scalar_t__ IBMVFC_TGT_ACTION_INIT_WAIT ; 
 int IBMVFC_TMF_MAD ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_timeout ; 
 scalar_t__ disc_threads ; 
 struct ibmvfc_target* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ibmvfc_event* FUNC5 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int FUNC7 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_adisc_cancel_done ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_tmf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 struct ibmvfc_target* tgt ; 
 int /*<<< orphan*/  FUNC13 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ibmvfc_target*,char*,int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC15(struct timer_list *t)
{
	struct ibmvfc_target *tgt = FUNC4(tgt, t, timer);
	struct ibmvfc_host *vhost = tgt->vhost;
	struct ibmvfc_event *evt;
	struct ibmvfc_tmf *tmf;
	unsigned long flags;
	int rc;

	FUNC13(tgt, "ADISC timeout\n");
	FUNC11(vhost->host->host_lock, flags);
	if (vhost->abort_threads >= disc_threads ||
	    tgt->action != IBMVFC_TGT_ACTION_INIT_WAIT ||
	    vhost->state != IBMVFC_INITIALIZING ||
	    vhost->action != IBMVFC_HOST_ACTION_QUERY_TGTS) {
		FUNC12(vhost->host->host_lock, flags);
		return;
	}

	vhost->abort_threads++;
	FUNC8(&tgt->kref);
	evt = FUNC5(vhost);
	FUNC6(evt, ibmvfc_tgt_adisc_cancel_done, IBMVFC_MAD_FORMAT);

	evt->tgt = tgt;
	tmf = &evt->iu.tmf;
	FUNC10(tmf, 0, sizeof(*tmf));
	tmf->common.version = FUNC2(1);
	tmf->common.opcode = FUNC2(IBMVFC_TMF_MAD);
	tmf->common.length = FUNC1(sizeof(*tmf));
	tmf->scsi_id = FUNC3(tgt->scsi_id);
	tmf->cancel_key = FUNC2(tgt->cancel_key);

	rc = FUNC7(evt, vhost, default_timeout);

	if (rc) {
		FUNC14(tgt, "Failed to send cancel event for ADISC. rc=%d\n", rc);
		vhost->abort_threads--;
		FUNC9(&tgt->kref, ibmvfc_release_tgt);
		FUNC0(vhost);
	} else
		FUNC13(tgt, "Attempting to cancel ADISC\n");
	FUNC12(vhost->host->host_lock, flags);
}