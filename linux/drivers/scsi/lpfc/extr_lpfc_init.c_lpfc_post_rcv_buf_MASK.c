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
struct lpfc_sli {int /*<<< orphan*/ * sli3_ring; } ;
struct lpfc_hba {struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_BUF_RING0 ; 
 size_t LPFC_ELS_RING ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli = &phba->sli;

	/* Ring 0, ELS / CT buffers */
	FUNC0(phba, &psli->sli3_ring[LPFC_ELS_RING], LPFC_BUF_RING0);
	/* Ring 2 - FCP no buffers needed */

	return 0;
}