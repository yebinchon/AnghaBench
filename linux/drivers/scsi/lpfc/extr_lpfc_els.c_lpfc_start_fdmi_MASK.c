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
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDMI_DID ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_FABRIC ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  NLP_STE_PLOGI_ISSUE ; 
 struct lpfc_nodelist* FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct lpfc_vport *vport)
{
	struct lpfc_nodelist *ndlp;

	/* If this is the first time, allocate an ndlp and initialize
	 * it. Otherwise, make sure the node is enabled and then do the
	 * login.
	 */
	ndlp = FUNC2(vport, FDMI_DID);
	if (!ndlp) {
		ndlp = FUNC4(vport, FDMI_DID);
		if (ndlp) {
			ndlp->nlp_type |= NLP_FABRIC;
		} else {
			return;
		}
	}
	if (!FUNC0(ndlp))
		ndlp = FUNC1(vport, ndlp, NLP_STE_NPR_NODE);

	if (ndlp) {
		FUNC5(vport, ndlp, NLP_STE_PLOGI_ISSUE);
		FUNC3(vport, ndlp->nlp_DID, 0);
	}
}