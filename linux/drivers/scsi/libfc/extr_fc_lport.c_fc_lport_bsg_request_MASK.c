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
typedef  int /*<<< orphan*/  u32 ;
struct fc_rport_priv {int /*<<< orphan*/  kref; int /*<<< orphan*/  e_d_tov; } ;
struct fc_rport {int /*<<< orphan*/  port_id; struct fc_rport_priv* dd_data; } ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  e_d_tov; struct fc_rport_priv* dns_rdata; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_id; } ;
struct TYPE_6__ {TYPE_2__ h_els; TYPE_1__ h_ct; } ;
struct fc_bsg_request {int msgcode; TYPE_3__ rqst_data; } ;
struct fc_bsg_reply {scalar_t__ reply_payload_rcv_len; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FC_BSG_HST_CT 131 
#define  FC_BSG_HST_ELS_NOLOGIN 130 
#define  FC_BSG_RPT_CT 129 
#define  FC_BSG_RPT_ELS 128 
 int /*<<< orphan*/  FC_FID_DIR_SERV ; 
 struct fc_rport* FUNC0 (struct bsg_job*) ; 
 struct Scsi_Host* FUNC1 (struct bsg_job*) ; 
 int FUNC2 (struct bsg_job*,struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bsg_job*,struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 struct fc_rport_priv* FUNC4 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct fc_lport* FUNC9 (struct Scsi_Host*) ; 

int FUNC10(struct bsg_job *job)
{
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct Scsi_Host *shost = FUNC1(job);
	struct fc_lport *lport = FUNC9(shost);
	struct fc_rport *rport;
	struct fc_rport_priv *rdata;
	int rc = -EINVAL;
	u32 did, tov;

	bsg_reply->reply_payload_rcv_len = 0;

	FUNC6(&lport->lp_mutex);

	switch (bsg_request->msgcode) {
	case FC_BSG_RPT_ELS:
		rport = FUNC0(job);
		if (!rport)
			break;

		rdata = rport->dd_data;
		rc = FUNC3(job, lport, rport->port_id,
					  rdata->e_d_tov);
		break;

	case FC_BSG_RPT_CT:
		rport = FUNC0(job);
		if (!rport)
			break;

		rdata = rport->dd_data;
		rc = FUNC2(job, lport, rport->port_id,
					 rdata->e_d_tov);
		break;

	case FC_BSG_HST_CT:
		did = FUNC8(bsg_request->rqst_data.h_ct.port_id);
		if (did == FC_FID_DIR_SERV) {
			rdata = lport->dns_rdata;
			if (!rdata)
				break;
			tov = rdata->e_d_tov;
		} else {
			rdata = FUNC4(lport, did);
			if (!rdata)
				break;
			tov = rdata->e_d_tov;
			FUNC5(&rdata->kref, fc_rport_destroy);
		}

		rc = FUNC2(job, lport, did, tov);
		break;

	case FC_BSG_HST_ELS_NOLOGIN:
		did = FUNC8(bsg_request->rqst_data.h_els.port_id);
		rc = FUNC3(job, lport, did, lport->e_d_tov);
		break;
	}

	FUNC7(&lport->lp_mutex);
	return rc;
}