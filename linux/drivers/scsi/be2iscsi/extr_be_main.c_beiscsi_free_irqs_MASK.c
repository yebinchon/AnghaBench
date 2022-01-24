#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hwi_context_memory {struct beiscsi_hba* be_eq; } ;
struct beiscsi_hba {int num_cpus; int /*<<< orphan*/ * msi_name; TYPE_2__* pcidev; TYPE_1__* phwi_ctrlr; } ;
struct TYPE_4__ {scalar_t__ irq; int /*<<< orphan*/  msix_enabled; } ;
struct TYPE_3__ {struct hwi_context_memory* phwi_ctxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC3(struct beiscsi_hba *phba)
{
	struct hwi_context_memory *phwi_context;
	int i;

	if (!phba->pcidev->msix_enabled) {
		if (phba->pcidev->irq)
			FUNC0(phba->pcidev->irq, phba);
		return;
	}

	phwi_context = phba->phwi_ctrlr->phwi_ctxt;
	for (i = 0; i <= phba->num_cpus; i++) {
		FUNC0(FUNC2(phba->pcidev, i),
			 &phwi_context->be_eq[i]);
		FUNC1(phba->msi_name[i]);
	}
}