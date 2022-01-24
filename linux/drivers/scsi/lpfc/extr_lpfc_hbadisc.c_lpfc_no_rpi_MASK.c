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
struct lpfc_nodelist {int nlp_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOERR_SLI_ABORTED ; 
 int /*<<< orphan*/  IOSTAT_LOCAL_REJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int NLP_RPI_REGISTERED ; 
 int /*<<< orphan*/  completions ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp)
{
	FUNC0(completions);

	FUNC1(ndlp);

	/*
	 * Everything that matches on txcmplq will be returned
	 * by firmware with a no rpi error.
	 */
	if (ndlp->nlp_flag & NLP_RPI_REGISTERED) {
		if (phba->sli_rev != LPFC_SLI_REV4)
			FUNC2(phba, ndlp, &completions);
		else
			FUNC3(phba, ndlp, &completions);
	}

	/* Cancel all the IOCBs from the completions list */
	FUNC4(phba, &completions, IOSTAT_LOCAL_REJECT,
			      IOERR_SLI_ABORTED);

	return 0;
}