#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lpfc_hba {TYPE_1__* pport; int /*<<< orphan*/  HAregaddr; int /*<<< orphan*/  HCregaddr; } ;
struct TYPE_2__ {scalar_t__ work_port_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	/* Clear all interrupt enable conditions */
	FUNC2(0, phba->HCregaddr);
	FUNC1(phba->HCregaddr); /* flush */
	/* Clear all pending interrupts */
	FUNC2(0xffffffff, phba->HAregaddr);
	FUNC1(phba->HAregaddr); /* flush */

	/* Reset some HBA SLI setup states */
	FUNC0(phba);
	phba->pport->work_port_events = 0;
}