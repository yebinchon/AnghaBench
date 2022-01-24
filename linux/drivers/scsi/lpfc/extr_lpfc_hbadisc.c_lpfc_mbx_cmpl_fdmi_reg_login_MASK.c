#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {scalar_t__ port_type; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_usg_map; int /*<<< orphan*/  kref; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_rpi; int /*<<< orphan*/  nlp_type; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_8__ {int /*<<< orphan*/ * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ctx_ndlp; int /*<<< orphan*/ * ctx_buf; struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef  TYPE_3__ MAILBOX_t ;
typedef  TYPE_4__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  NLP_FABRIC ; 
 int /*<<< orphan*/  NLP_RPI_REGISTERED ; 
 int /*<<< orphan*/  NLP_STE_UNMAPPED_NODE ; 
 int /*<<< orphan*/  SLI_MGMT_DHBA ; 
 int /*<<< orphan*/  SLI_MGMT_DPRT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	MAILBOX_t *mb = &pmb->u.mb;
	struct lpfc_dmabuf   *mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;
	struct lpfc_vport    *vport = pmb->vport;

	pmb->ctx_buf = NULL;
	pmb->ctx_ndlp = NULL;

	if (phba->sli_rev < LPFC_SLI_REV4)
		ndlp->nlp_rpi = mb->un.varWords[0];
	ndlp->nlp_flag |= NLP_RPI_REGISTERED;
	ndlp->nlp_type |= NLP_FABRIC;
	FUNC5(vport, ndlp, NLP_STE_UNMAPPED_NODE);
	FUNC6(vport, KERN_INFO, LOG_SLI,
			 "0004 rpi:%x DID:%x flg:%x %d map:%x x%px\n",
			 ndlp->nlp_rpi, ndlp->nlp_DID, ndlp->nlp_flag,
			 FUNC1(&ndlp->kref),
			 ndlp->nlp_usg_map, ndlp);
	/*
	 * Start issuing Fabric-Device Management Interface (FDMI) command to
	 * 0xfffffa (FDMI well known port).
	 * DHBA -> DPRT -> RHBA -> RPA  (physical port)
	 * DPRT -> RPRT (vports)
	 */
	if (vport->port_type == LPFC_PHYSICAL_PORT)
		FUNC2(vport, ndlp, SLI_MGMT_DHBA, 0);
	else
		FUNC2(vport, ndlp, SLI_MGMT_DPRT, 0);


	/* decrement the node reference count held for this callback
	 * function.
	 */
	FUNC4(ndlp);
	FUNC3(phba, mp->virt, mp->phys);
	FUNC0(mp);
	FUNC7(pmb, phba->mbox_mem_pool);

	return;
}