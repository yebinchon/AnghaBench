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
struct TYPE_2__ {int /*<<< orphan*/  sgl_list_lock; int /*<<< orphan*/  lpfc_els_sgl_list; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sglq_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct lpfc_hba *phba)
{
	FUNC0(sglq_list);

	/* Retrieve all els sgls from driver list */
	FUNC4(&phba->hbalock);
	FUNC3(&phba->sli4_hba.sgl_list_lock);
	FUNC1(&phba->sli4_hba.lpfc_els_sgl_list, &sglq_list);
	FUNC5(&phba->sli4_hba.sgl_list_lock);
	FUNC6(&phba->hbalock);

	/* Now free the sgl list */
	FUNC2(phba, &sglq_list);
}