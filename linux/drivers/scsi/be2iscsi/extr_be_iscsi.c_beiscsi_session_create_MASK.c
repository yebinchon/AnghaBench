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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct iscsi_session {struct beiscsi_session* dd_data; } ;
struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct beiscsi_session {int /*<<< orphan*/  bhs_pool; } ;
struct beiscsi_io_task {int dummy; } ;
struct TYPE_3__ {scalar_t__ wrbs_per_cxn; } ;
struct beiscsi_hba {TYPE_2__* pcidev; struct Scsi_Host* shost; TYPE_1__ params; int /*<<< orphan*/  state; } ;
struct beiscsi_endpoint {struct beiscsi_hba* phba; } ;
struct be_cmd_bhs {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  ISCSI_MAX_TARGET ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  beiscsi_iscsi_transport ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct iscsi_cls_session* FUNC3 (int /*<<< orphan*/ *,struct Scsi_Host*,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct iscsi_cls_session *FUNC6(struct iscsi_endpoint *ep,
						 u16 cmds_max,
						 u16 qdepth,
						 u32 initial_cmdsn)
{
	struct Scsi_Host *shost;
	struct beiscsi_endpoint *beiscsi_ep;
	struct iscsi_cls_session *cls_session;
	struct beiscsi_hba *phba;
	struct iscsi_session *sess;
	struct beiscsi_session *beiscsi_sess;
	struct beiscsi_io_task *io_task;


	if (!ep) {
		FUNC5("beiscsi_session_create: invalid ep\n");
		return NULL;
	}
	beiscsi_ep = ep->dd_data;
	phba = beiscsi_ep->phba;

	if (!FUNC0(phba)) {
		FUNC1(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
			    "BS_%d : HBA in error 0x%lx\n", phba->state);
		return NULL;
	}

	FUNC1(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : In beiscsi_session_create\n");
	if (cmds_max > beiscsi_ep->phba->params.wrbs_per_cxn) {
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : Cannot handle %d cmds."
			    "Max cmds per session supported is %d. Using %d."
			    "\n", cmds_max,
			    beiscsi_ep->phba->params.wrbs_per_cxn,
			    beiscsi_ep->phba->params.wrbs_per_cxn);

		cmds_max = beiscsi_ep->phba->params.wrbs_per_cxn;
	}

	shost = phba->shost;
	cls_session = FUNC3(&beiscsi_iscsi_transport,
					  shost, cmds_max,
					  sizeof(*beiscsi_sess),
					  sizeof(*io_task),
					  initial_cmdsn, ISCSI_MAX_TARGET);
	if (!cls_session)
		return NULL;
	sess = cls_session->dd_data;
	beiscsi_sess = sess->dd_data;
	beiscsi_sess->bhs_pool =  FUNC2("beiscsi_bhs_pool",
						   &phba->pcidev->dev,
						   sizeof(struct be_cmd_bhs),
						   64, 0);
	if (!beiscsi_sess->bhs_pool)
		goto destroy_sess;

	return cls_session;
destroy_sess:
	FUNC4(cls_session);
	return NULL;
}