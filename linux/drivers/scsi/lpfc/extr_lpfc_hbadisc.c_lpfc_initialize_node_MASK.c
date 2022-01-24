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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int /*<<< orphan*/  cfg_tgt_queue_depth; int /*<<< orphan*/  phba; } ;
struct TYPE_4__ {int /*<<< orphan*/  evt_listp; } ;
struct TYPE_3__ {int /*<<< orphan*/  evt_listp; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_defer_did; int /*<<< orphan*/  cmd_qdepth; int /*<<< orphan*/  cmd_pending; int /*<<< orphan*/  kref; int /*<<< orphan*/  nlp_fc4_type; int /*<<< orphan*/  nlp_sid; int /*<<< orphan*/  phba; struct lpfc_vport* vport; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_delayfunc; TYPE_2__ dev_loss_evt; TYPE_1__ els_retry_evt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NLP_EVT_NOTHING_PENDING ; 
 int /*<<< orphan*/  NLP_FC4_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_NO_SID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_els_retry_delay ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
	uint32_t did)
{
	FUNC0(&ndlp->els_retry_evt.evt_listp);
	FUNC0(&ndlp->dev_loss_evt.evt_listp);
	FUNC4(&ndlp->nlp_delayfunc, lpfc_els_retry_delay, 0);
	ndlp->nlp_DID = did;
	ndlp->vport = vport;
	ndlp->phba = vport->phba;
	ndlp->nlp_sid = NLP_NO_SID;
	ndlp->nlp_fc4_type = NLP_FC4_NONE;
	FUNC3(&ndlp->kref);
	FUNC1(ndlp);
	FUNC2(&ndlp->cmd_pending, 0);
	ndlp->cmd_qdepth = vport->cfg_tgt_queue_depth;
	ndlp->nlp_defer_did = NLP_EVT_NOTHING_PENDING;
}