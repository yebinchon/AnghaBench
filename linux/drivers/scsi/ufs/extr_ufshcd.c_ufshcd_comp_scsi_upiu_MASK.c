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
typedef  int /*<<< orphan*/  u32 ;
struct ufshcd_lrb {TYPE_1__* cmd; int /*<<< orphan*/  command_type; } ;
struct ufs_hba {scalar_t__ ufs_version; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_data_direction; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UFSHCI_VERSION_10 ; 
 scalar_t__ UFSHCI_VERSION_11 ; 
 int /*<<< orphan*/  UTP_CMD_TYPE_SCSI ; 
 int /*<<< orphan*/  UTP_CMD_TYPE_UFS_STORAGE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufshcd_lrb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufshcd_lrb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ufs_hba *hba, struct ufshcd_lrb *lrbp)
{
	u32 upiu_flags;
	int ret = 0;

	if ((hba->ufs_version == UFSHCI_VERSION_10) ||
	    (hba->ufs_version == UFSHCI_VERSION_11))
		lrbp->command_type = UTP_CMD_TYPE_SCSI;
	else
		lrbp->command_type = UTP_CMD_TYPE_UFS_STORAGE;

	if (FUNC0(lrbp->cmd)) {
		FUNC1(lrbp, &upiu_flags,
						lrbp->cmd->sc_data_direction);
		FUNC2(lrbp, upiu_flags);
	} else {
		ret = -EINVAL;
	}

	return ret;
}