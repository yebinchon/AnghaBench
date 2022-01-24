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
struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int max_vports; } ;

/* Variables and functions */
 struct lpfc_vport** FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	struct lpfc_vport **vports;
	int i;

	vports = FUNC0(phba);
	if (vports)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++)
			FUNC2(vports[i]);
	FUNC1(phba, vports);
}