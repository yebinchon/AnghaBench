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
struct lpfc_hba {scalar_t__ nvmet_support; } ;

/* Variables and functions */
 scalar_t__ LPFC_NVMET_BUF_POST ; 
 int FUNC0 (struct lpfc_hba*) ; 

int
FUNC1(struct lpfc_hba *phba)
{
	int max_xri = FUNC0(phba);

	if (phba->nvmet_support)
		max_xri += LPFC_NVMET_BUF_POST;
	return max_xri;
}