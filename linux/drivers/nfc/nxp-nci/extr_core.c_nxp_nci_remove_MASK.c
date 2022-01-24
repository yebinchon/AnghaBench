#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct nxp_nci_info {scalar_t__ mode; int /*<<< orphan*/  info_lock; int /*<<< orphan*/  phy_id; TYPE_2__* phy_ops; TYPE_1__ fw_info; } ;
struct nci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_mode ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  NXP_NCI_MODE_COLD ; 
 scalar_t__ NXP_NCI_MODE_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*) ; 
 struct nxp_nci_info* FUNC4 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nxp_nci_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct nci_dev *ndev)
{
	struct nxp_nci_info *info = FUNC4(ndev);

	if (info->mode == NXP_NCI_MODE_FW)
		FUNC6(info, -ESHUTDOWN);
	FUNC0(&info->fw_info.work);

	FUNC1(&info->info_lock);

	if (info->phy_ops->set_mode)
		info->phy_ops->set_mode(info->phy_id, NXP_NCI_MODE_COLD);

	FUNC5(ndev);
	FUNC3(ndev);

	FUNC2(&info->info_lock);
}