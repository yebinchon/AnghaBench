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
struct TYPE_5__ {int /*<<< orphan*/  length; void* opcode; void* version; } ;
struct ibmvfc_tmf {void* my_cancel_key; void* cancel_key; int /*<<< orphan*/  scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {int aborting_passthru; scalar_t__ state; TYPE_3__* host; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct ibmvfc_tmf tmf; } ;
struct ibmvfc_event {TYPE_1__ iu; } ;
struct bsg_job {scalar_t__ dd_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ENTER ; 
 scalar_t__ IBMVFC_ACTIVE ; 
 int IBMVFC_INTERNAL_CANCEL_KEY ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int IBMVFC_PASSTHRU_CANCEL_KEY ; 
 int IBMVFC_TMF_MAD ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  default_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct bsg_job*) ; 
 int /*<<< orphan*/  ibmvfc_bsg_timeout_done ; 
 struct ibmvfc_event* FUNC7 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_tmf*,int /*<<< orphan*/ ,int) ; 
 struct ibmvfc_host* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct bsg_job *job)
{
	struct ibmvfc_host *vhost = FUNC11(FUNC6(job));
	unsigned long port_id = (unsigned long)job->dd_data;
	struct ibmvfc_event *evt;
	struct ibmvfc_tmf *tmf;
	unsigned long flags;
	int rc;

	ENTER;
	FUNC12(vhost->host->host_lock, flags);
	if (vhost->aborting_passthru || vhost->state != IBMVFC_ACTIVE) {
		FUNC0(vhost);
		FUNC13(vhost->host->host_lock, flags);
		return 0;
	}

	vhost->aborting_passthru = 1;
	evt = FUNC7(vhost);
	FUNC8(evt, ibmvfc_bsg_timeout_done, IBMVFC_MAD_FORMAT);

	tmf = &evt->iu.tmf;
	FUNC10(tmf, 0, sizeof(*tmf));
	tmf->common.version = FUNC2(1);
	tmf->common.opcode = FUNC2(IBMVFC_TMF_MAD);
	tmf->common.length = FUNC1(sizeof(*tmf));
	tmf->scsi_id = FUNC3(port_id);
	tmf->cancel_key = FUNC2(IBMVFC_PASSTHRU_CANCEL_KEY);
	tmf->my_cancel_key = FUNC2(IBMVFC_INTERNAL_CANCEL_KEY);
	rc = FUNC9(evt, vhost, default_timeout);

	if (rc != 0) {
		vhost->aborting_passthru = 0;
		FUNC4(vhost->dev, "Failed to send cancel event. rc=%d\n", rc);
		rc = -EIO;
	} else
		FUNC5(vhost->dev, "Cancelling passthru command to port id 0x%lx\n",
			 port_id);

	FUNC13(vhost->host->host_lock, flags);

	LEAVE;
	return rc;
}