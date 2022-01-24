#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_req {int /*<<< orphan*/  req_id; int /*<<< orphan*/  issued; int /*<<< orphan*/  status; TYPE_2__* qtcb; TYPE_1__* adapter; } ;
struct TYPE_7__ {int /*<<< orphan*/  fsf_status_qual; int /*<<< orphan*/  prot_status_qual; int /*<<< orphan*/  lun_handle; int /*<<< orphan*/  port_handle; int /*<<< orphan*/  fsf_status; int /*<<< orphan*/  prot_status; int /*<<< orphan*/  req_issued; } ;
struct TYPE_8__ {TYPE_3__ res; } ;
struct zfcp_dbf_hba {scalar_t__ fsf_cmd; int /*<<< orphan*/  pl_len; TYPE_4__ u; int /*<<< orphan*/  fsf_seq_no; int /*<<< orphan*/  fsf_req_status; int /*<<< orphan*/  fsf_req_id; int /*<<< orphan*/  id; int /*<<< orphan*/  tag; } ;
struct zfcp_dbf {int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  hba; struct zfcp_dbf_hba hba_buf; } ;
struct fsf_qtcb_prefix {char prot_status_qual; int /*<<< orphan*/  prot_status; int /*<<< orphan*/  req_seq_no; } ;
struct fsf_qtcb_header {scalar_t__ fsf_command; char fsf_status_qual; int log_start; int /*<<< orphan*/  log_length; int /*<<< orphan*/  lun_handle; int /*<<< orphan*/  port_handle; int /*<<< orphan*/  fsf_status; } ;
struct TYPE_6__ {struct fsf_qtcb_header header; struct fsf_qtcb_prefix prefix; } ;
struct TYPE_5__ {struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSF_PROT_STATUS_QUAL_SIZE ; 
 scalar_t__ FSF_QTCB_FCP_CMND ; 
 int /*<<< orphan*/  FSF_STATUS_QUALIFIER_SIZE ; 
 int /*<<< orphan*/  ZFCP_DBF_HBA_RES ; 
 int /*<<< orphan*/  ZFCP_DBF_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct zfcp_dbf_hba*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_dbf_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_dbf*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC6(char *tag, int level, struct zfcp_fsf_req *req)
{
	struct zfcp_dbf *dbf = req->adapter->dbf;
	struct fsf_qtcb_prefix *q_pref = &req->qtcb->prefix;
	struct fsf_qtcb_header *q_head = &req->qtcb->header;
	struct zfcp_dbf_hba *rec = &dbf->hba_buf;
	unsigned long flags;

	FUNC3(&dbf->hba_lock, flags);
	FUNC2(rec, 0, sizeof(*rec));

	FUNC1(rec->tag, tag, ZFCP_DBF_TAG_LEN);
	rec->id = ZFCP_DBF_HBA_RES;
	rec->fsf_req_id = req->req_id;
	rec->fsf_req_status = req->status;
	rec->fsf_cmd = q_head->fsf_command;
	rec->fsf_seq_no = q_pref->req_seq_no;
	rec->u.res.req_issued = req->issued;
	rec->u.res.prot_status = q_pref->prot_status;
	rec->u.res.fsf_status = q_head->fsf_status;
	rec->u.res.port_handle = q_head->port_handle;
	rec->u.res.lun_handle = q_head->lun_handle;

	FUNC1(rec->u.res.prot_status_qual, &q_pref->prot_status_qual,
	       FSF_PROT_STATUS_QUAL_SIZE);
	FUNC1(rec->u.res.fsf_status_qual, &q_head->fsf_status_qual,
	       FSF_STATUS_QUALIFIER_SIZE);

	if (q_head->fsf_command != FSF_QTCB_FCP_CMND) {
		rec->pl_len = q_head->log_length;
		FUNC5(dbf, (char *)q_pref + q_head->log_start,
				  rec->pl_len, "fsf_res", req->req_id);
	}

	FUNC0(dbf->hba, level, rec, sizeof(*rec));
	FUNC4(&dbf->hba_lock, flags);
}