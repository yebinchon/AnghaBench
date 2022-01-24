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
struct lpfc_hba {int /*<<< orphan*/  hbalock; } ;
typedef  int /*<<< orphan*/  LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct lpfc_hba *phba, LPFC_MBOXQ_t *mbq)
{
	unsigned long iflag;

	/* This function expects to be called from interrupt context */
	FUNC1(&phba->hbalock, iflag);
	FUNC0(phba, mbq);
	FUNC2(&phba->hbalock, iflag);
	return;
}