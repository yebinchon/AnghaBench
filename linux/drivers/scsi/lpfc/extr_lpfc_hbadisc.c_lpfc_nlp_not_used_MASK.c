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
struct lpfc_nodelist {int /*<<< orphan*/  kref; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_DISC_TRC_NODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct lpfc_nodelist*) ; 

int
FUNC3(struct lpfc_nodelist *ndlp)
{
	FUNC1(ndlp->vport, LPFC_DISC_TRC_NODE,
		"node not used:   did:x%x flg:x%x refcnt:x%x",
		ndlp->nlp_DID, ndlp->nlp_flag,
		FUNC0(&ndlp->kref));
	if (FUNC0(&ndlp->kref) == 1)
		if (FUNC2(ndlp))
			return 1;
	return 0;
}