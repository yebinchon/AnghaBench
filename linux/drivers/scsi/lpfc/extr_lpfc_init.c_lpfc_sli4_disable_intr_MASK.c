#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sli_intr; } ;
struct TYPE_8__ {TYPE_2__ slistat; } ;
struct TYPE_6__ {struct lpfc_hba* hba_eq_hdl; } ;
struct lpfc_hba {scalar_t__ intr_type; int cfg_irq_chann; TYPE_3__ sli; TYPE_4__* pcidev; TYPE_1__ sli4_hba; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ MSIX ; 
 scalar_t__ NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_hba *phba)
{
	/* Disable the currently initialized interrupt mode */
	if (phba->intr_type == MSIX) {
		int index;

		/* Free up MSI-X multi-message vectors */
		for (index = 0; index < phba->cfg_irq_chann; index++) {
			FUNC1(
				FUNC3(phba->pcidev, index),
				NULL);
			FUNC0(FUNC3(phba->pcidev, index),
					&phba->sli4_hba.hba_eq_hdl[index]);
		}
	} else {
		FUNC0(phba->pcidev->irq, phba);
	}

	FUNC2(phba->pcidev);

	/* Reset interrupt management states */
	phba->intr_type = NONE;
	phba->sli.slistat.sli_intr = 0;
}