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
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  fabric_iocb_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOERR_SLI_ABORTED ; 
 int /*<<< orphan*/  IOSTAT_LOCAL_REJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  completions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct lpfc_hba *phba)
{
	FUNC0(completions);

	FUNC3(&phba->hbalock);
	FUNC1(&phba->fabric_iocb_list, &completions);
	FUNC4(&phba->hbalock);

	/* Cancel all the IOCBs from the completions list */
	FUNC2(phba, &completions, IOSTAT_LOCAL_REJECT,
			      IOERR_SLI_ABORTED);
}