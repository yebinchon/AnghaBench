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
struct TYPE_3__ {scalar_t__ sli_intr; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {scalar_t__ intr_type; TYPE_2__ sli; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int LPFC_MSIX_VECTORS ; 
 scalar_t__ MSIX ; 
 scalar_t__ NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	int nr_irqs, i;

	if (phba->intr_type == MSIX)
		nr_irqs = LPFC_MSIX_VECTORS;
	else
		nr_irqs = 1;

	for (i = 0; i < nr_irqs; i++)
		FUNC0(FUNC2(phba->pcidev, i), phba);
	FUNC1(phba->pcidev);

	/* Reset interrupt management states */
	phba->intr_type = NONE;
	phba->sli.slistat.sli_intr = 0;
}