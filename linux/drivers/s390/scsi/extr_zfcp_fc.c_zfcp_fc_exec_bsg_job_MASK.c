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
struct zfcp_fsf_ct_els {struct bsg_job* handler_data; int /*<<< orphan*/  resp; int /*<<< orphan*/  req; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct fc_rport {int dummy; } ;
struct fc_bsg_request {int msgcode; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  sg_list; } ;
struct bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; struct fc_bsg_request* request; struct zfcp_fsf_ct_els* dd_data; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FC_BSG_HST_CT 131 
#define  FC_BSG_HST_ELS_NOLOGIN 130 
#define  FC_BSG_RPT_CT 129 
#define  FC_BSG_RPT_ELS 128 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct fc_rport* FUNC1 (struct bsg_job*) ; 
 struct Scsi_Host* FUNC2 (struct bsg_job*) ; 
 struct Scsi_Host* FUNC3 (struct fc_rport*) ; 
 int FUNC4 (struct bsg_job*,struct zfcp_adapter*) ; 
 int FUNC5 (struct bsg_job*,struct zfcp_adapter*) ; 

int FUNC6(struct bsg_job *job)
{
	struct Scsi_Host *shost;
	struct zfcp_adapter *adapter;
	struct zfcp_fsf_ct_els *ct_els = job->dd_data;
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_rport *rport = FUNC1(job);

	shost = rport ? FUNC3(rport) : FUNC2(job);
	adapter = (struct zfcp_adapter *)shost->hostdata[0];

	if (!(FUNC0(&adapter->status) & ZFCP_STATUS_COMMON_OPEN))
		return -EINVAL;

	ct_els->req = job->request_payload.sg_list;
	ct_els->resp = job->reply_payload.sg_list;
	ct_els->handler_data = job;

	switch (bsg_request->msgcode) {
	case FC_BSG_RPT_ELS:
	case FC_BSG_HST_ELS_NOLOGIN:
		return FUNC5(job, adapter);
	case FC_BSG_RPT_CT:
	case FC_BSG_HST_CT:
		return FUNC4(job, adapter);
	default:
		return -EINVAL;
	}
}