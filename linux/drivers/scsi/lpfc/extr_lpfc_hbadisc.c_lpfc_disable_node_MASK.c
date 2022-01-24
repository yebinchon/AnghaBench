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
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int /*<<< orphan*/  nlp_listp; } ;

/* Variables and functions */
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
	FUNC1(vport, ndlp);
	if (ndlp->nlp_state && !FUNC0(&ndlp->nlp_listp))
		FUNC2(vport, ndlp->nlp_state, -1);
	FUNC3(vport, ndlp, ndlp->nlp_state,
				NLP_STE_UNUSED_NODE);
}