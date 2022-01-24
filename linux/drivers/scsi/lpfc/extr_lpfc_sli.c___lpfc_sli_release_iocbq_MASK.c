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
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int /*<<< orphan*/  iocb_cnt; int /*<<< orphan*/  (* __lpfc_sli_release_iocbq ) (struct lpfc_hba*,struct lpfc_iocbq*) ;int /*<<< orphan*/  hbalock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 

__attribute__((used)) static void
FUNC2(struct lpfc_hba *phba, struct lpfc_iocbq *iocbq)
{
	FUNC0(&phba->hbalock);

	phba->__lpfc_sli_release_iocbq(phba, iocbq);
	phba->iocb_cnt--;
}