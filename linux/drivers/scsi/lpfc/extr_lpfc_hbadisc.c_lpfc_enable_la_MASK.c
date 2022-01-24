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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_sli {int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  HCregaddr; struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  HC_LAINT_ENA ; 
 int /*<<< orphan*/  LPFC_PROCESS_LA ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_hba *phba)
{
	uint32_t control;
	struct lpfc_sli *psli = &phba->sli;
	FUNC1(&phba->hbalock);
	psli->sli_flag |= LPFC_PROCESS_LA;
	if (phba->sli_rev <= LPFC_SLI_REV3) {
		control = FUNC0(phba->HCregaddr);
		control |= HC_LAINT_ENA;
		FUNC3(control, phba->HCregaddr);
		FUNC0(phba->HCregaddr); /* flush */
	}
	FUNC2(&phba->hbalock);
}