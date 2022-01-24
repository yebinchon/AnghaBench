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
struct lpfc_hba {int cfg_hdw_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_ELS ; 
 int /*<<< orphan*/  DUMP_IO ; 
 int /*<<< orphan*/  DUMP_MBX ; 
 int /*<<< orphan*/  DUMP_NVMELS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct lpfc_hba *phba)
{
	int idx;

	/*
	 * Dump Work Queues (WQs)
	 */
	FUNC4(phba, DUMP_MBX, 0);
	FUNC4(phba, DUMP_ELS, 0);
	FUNC4(phba, DUMP_NVMELS, 0);

	for (idx = 0; idx < phba->cfg_hdw_queue; idx++)
		FUNC4(phba, DUMP_IO, idx);

	FUNC3(phba);
	FUNC1(phba);
	/*
	 * Dump Complete Queues (CQs)
	 */
	FUNC0(phba, DUMP_MBX, 0);
	FUNC0(phba, DUMP_ELS, 0);
	FUNC0(phba, DUMP_NVMELS, 0);

	for (idx = 0; idx < phba->cfg_hdw_queue; idx++)
		FUNC0(phba, DUMP_IO, idx);

	/*
	 * Dump Event Queues (EQs)
	 */
	for (idx = 0; idx < phba->cfg_hdw_queue; idx++)
		FUNC2(phba, idx);
}