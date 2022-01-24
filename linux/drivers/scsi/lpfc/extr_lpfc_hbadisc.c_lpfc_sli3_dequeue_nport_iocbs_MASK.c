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
typedef  size_t uint32_t ;
struct lpfc_sli {size_t num_rings; int /*<<< orphan*/ * sli3_ring; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; struct lpfc_sli sli; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_nodelist*,int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba,
		struct lpfc_nodelist *ndlp, struct list_head *dequeue_list)
{
	struct lpfc_sli *psli = &phba->sli;
	uint32_t i;

	FUNC1(&phba->hbalock);
	for (i = 0; i < psli->num_rings; i++)
		FUNC0(phba, ndlp, &psli->sli3_ring[i],
						dequeue_list);
	FUNC2(&phba->hbalock);
}