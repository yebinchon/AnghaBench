#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct serv_parm {int dummy; } ;
struct lpfc_vport {int /*<<< orphan*/  vpi; int /*<<< orphan*/  port_state; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_rpi; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; struct serv_parm fc_fabparam; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_7__ {scalar_t__ ctx_buf; int /*<<< orphan*/  ctx_ndlp; struct lpfc_vport* vport; int /*<<< orphan*/  mbox_cmpl; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LPFC_FABRIC_CFG_LINK ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,TYPE_1__*) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_mbx_cmpl_fabric_reg_login ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC9 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC13(struct lpfc_vport *vport)
{
	struct lpfc_hba  *phba = vport->phba;
	LPFC_MBOXQ_t *mbox;
	struct lpfc_dmabuf *mp;
	struct lpfc_nodelist *ndlp;
	struct serv_parm *sp;
	int rc;
	int err = 0;

	sp = &phba->fc_fabparam;
	ndlp = FUNC3(vport, Fabric_DID);
	if (!ndlp || !FUNC0(ndlp)) {
		err = 1;
		goto fail;
	}

	mbox = FUNC11(phba->mbox_mem_pool, GFP_KERNEL);
	if (!mbox) {
		err = 2;
		goto fail;
	}

	vport->port_state = LPFC_FABRIC_CFG_LINK;
	FUNC2(phba, mbox);
	mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
	mbox->vport = vport;

	rc = FUNC9(phba, mbox, MBX_NOWAIT);
	if (rc == MBX_NOT_FINISHED) {
		err = 3;
		goto fail_free_mbox;
	}

	mbox = FUNC11(phba->mbox_mem_pool, GFP_KERNEL);
	if (!mbox) {
		err = 4;
		goto fail;
	}
	rc = FUNC8(phba, vport->vpi, Fabric_DID, (uint8_t *)sp, mbox,
			  ndlp->nlp_rpi);
	if (rc) {
		err = 5;
		goto fail_free_mbox;
	}

	mbox->mbox_cmpl = lpfc_mbx_cmpl_fabric_reg_login;
	mbox->vport = vport;
	/* increment the reference count on ndlp to hold reference
	 * for the callback routine.
	 */
	mbox->ctx_ndlp = FUNC5(ndlp);

	rc = FUNC9(phba, mbox, MBX_NOWAIT);
	if (rc == MBX_NOT_FINISHED) {
		err = 6;
		goto fail_issue_reg_login;
	}

	return 0;

fail_issue_reg_login:
	/* decrement the reference count on ndlp just incremented
	 * for the failed mbox command.
	 */
	FUNC6(ndlp);
	mp = (struct lpfc_dmabuf *)mbox->ctx_buf;
	FUNC4(phba, mp->virt, mp->phys);
	FUNC1(mp);
fail_free_mbox:
	FUNC12(mbox, phba->mbox_mem_pool);

fail:
	FUNC10(vport, FC_VPORT_FAILED);
	FUNC7(vport, KERN_ERR, LOG_ELS,
		"0249 Cannot issue Register Fabric login: Err %d\n", err);
	return -ENXIO;
}