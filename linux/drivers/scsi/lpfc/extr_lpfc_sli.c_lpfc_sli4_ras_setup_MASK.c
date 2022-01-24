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
struct lpfc_hba {int /*<<< orphan*/  cfg_ras_fwlog_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_RAS_ENABLE_LOGGING ; 
 scalar_t__ FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct lpfc_hba *phba)
{
	/* Check RAS FW Log needs to be enabled or not */
	if (FUNC0(phba))
		return;

	FUNC1(phba, phba->cfg_ras_fwlog_level,
				 LPFC_RAS_ENABLE_LOGGING);
}