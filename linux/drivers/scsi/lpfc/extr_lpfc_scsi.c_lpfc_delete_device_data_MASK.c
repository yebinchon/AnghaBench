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
struct lpfc_hba {int /*<<< orphan*/  device_data_mem_pool; int /*<<< orphan*/  cfg_fof; } ;
struct lpfc_device_data {int /*<<< orphan*/  listentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_device_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

void
FUNC4(struct lpfc_hba *phba,
			struct lpfc_device_data *lun_info)
{

	if (FUNC3(!phba) || !lun_info  ||
	    !(phba->cfg_fof))
		return;

	if (!FUNC1(&lun_info->listentry))
		FUNC0(&lun_info->listentry);
	FUNC2(lun_info, phba->device_data_mem_pool);
	return;
}