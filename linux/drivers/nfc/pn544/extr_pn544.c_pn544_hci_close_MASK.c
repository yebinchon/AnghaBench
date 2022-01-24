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
struct pn544_hci_info {scalar_t__ state; int /*<<< orphan*/  info_lock; int /*<<< orphan*/  phy_id; TYPE_1__* phy_ops; } ;
struct nfc_hci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ PN544_ST_COLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pn544_hci_info* FUNC2 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nfc_hci_dev *hdev)
{
	struct pn544_hci_info *info = FUNC2(hdev);

	FUNC0(&info->info_lock);

	if (info->state == PN544_ST_COLD)
		goto out;

	info->phy_ops->disable(info->phy_id);

	info->state = PN544_ST_COLD;

out:
	FUNC1(&info->info_lock);
}