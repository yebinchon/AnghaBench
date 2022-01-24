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
struct lpfc_sli {int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  link_state; int /*<<< orphan*/  hbalock; struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS_MBRDY ; 
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_MBX_NO_WAIT ; 
 int /*<<< orphan*/  LPFC_SLI_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct lpfc_hba *phba)
{
	struct lpfc_sli   *psli = &phba->sli;

	FUNC7(&phba->hbalock);
	psli->sli_flag &= ~LPFC_SLI_ACTIVE;
	FUNC8(&phba->hbalock);
	FUNC2(phba, LPFC_MBX_NO_WAIT);

	FUNC1(phba);
	FUNC3(phba);
	FUNC7(&phba->hbalock);
	FUNC5(phba);
	FUNC8(&phba->hbalock);
	FUNC0(phba);
	FUNC4(phba, HS_MBRDY);
	FUNC6(phba);
	phba->link_state = LPFC_HBA_ERROR;
	return;
}