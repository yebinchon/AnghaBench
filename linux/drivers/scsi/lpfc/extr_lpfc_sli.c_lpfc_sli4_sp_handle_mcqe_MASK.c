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
struct lpfc_queue {int /*<<< orphan*/  CQ_mbox; } ;
struct lpfc_mcqe {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_cqe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_mcqe*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_cqe*,struct lpfc_mcqe*,int) ; 
 int FUNC2 (struct lpfc_hba*,struct lpfc_mcqe*) ; 
 int FUNC3 (struct lpfc_hba*,struct lpfc_mcqe*) ; 
 int /*<<< orphan*/  lpfc_trailer_async ; 

__attribute__((used)) static bool
FUNC4(struct lpfc_hba *phba, struct lpfc_queue *cq,
			 struct lpfc_cqe *cqe)
{
	struct lpfc_mcqe mcqe;
	bool workposted;

	cq->CQ_mbox++;

	/* Copy the mailbox MCQE and convert endian order as needed */
	FUNC1(cqe, &mcqe, sizeof(struct lpfc_mcqe));

	/* Invoke the proper event handling routine */
	if (!FUNC0(lpfc_trailer_async, &mcqe))
		workposted = FUNC3(phba, &mcqe);
	else
		workposted = FUNC2(phba, &mcqe);
	return workposted;
}