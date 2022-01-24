#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_nodelist {int dummy; } ;
struct lpfc_node_rrq {int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  vport; int /*<<< orphan*/  xritag; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 struct lpfc_nodelist* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,struct lpfc_node_rrq*) ; 
 scalar_t__ FUNC2 (struct lpfc_hba*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct lpfc_hba *phba, struct lpfc_node_rrq *rrq)
{
	struct lpfc_nodelist *ndlp = FUNC0(rrq->vport,
						       rrq->nlp_DID);
	if (!ndlp)
		return 1;

	if (FUNC2(phba, ndlp, rrq->xritag))
		return FUNC1(rrq->vport, ndlp,
					 rrq->nlp_DID, rrq);
	else
		return 1;
}