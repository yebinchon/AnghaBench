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
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {struct be_eq_obj* be_eq; } ;
struct beiscsi_hba {unsigned int num_cpus; int /*<<< orphan*/  boot_work; int /*<<< orphan*/  eqd_update; int /*<<< orphan*/  pcidev; struct hwi_controller* phwi_ctrlr; int /*<<< orphan*/  state; } ;
struct be_eq_obj {int /*<<< orphan*/  mcc_work; int /*<<< orphan*/  iopoll; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_HBA_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 scalar_t__ FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct beiscsi_hba *phba, int unload)
{
	struct hwi_context_memory *phwi_context;
	struct hwi_controller *phwi_ctrlr;
	struct be_eq_obj *pbe_eq;
	unsigned int i;

	if (!FUNC9(BEISCSI_HBA_ONLINE, &phba->state))
		return;

	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_context = phwi_ctrlr->phwi_ctxt;
	FUNC6(phba);
	FUNC1(phba);
	FUNC8(phba->pcidev);

	for (i = 0; i < phba->num_cpus; i++) {
		pbe_eq = &phwi_context->be_eq[i];
		FUNC7(&pbe_eq->iopoll);
	}
	FUNC3(&phba->eqd_update);
	FUNC4(&phba->boot_work);
	/* WQ might be running cancel queued mcc_work if we are not exiting */
	if (!unload && FUNC2(phba)) {
		pbe_eq = &phwi_context->be_eq[i];
		FUNC4(&pbe_eq->mcc_work);
	}
	FUNC5(phba);
	FUNC0(phba);
}