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
struct TYPE_2__ {int (* enable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ PN544_ST_COLD ; 
 scalar_t__ PN544_ST_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pn544_hci_info* FUNC2 (struct nfc_hci_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nfc_hci_dev *hdev)
{
	struct pn544_hci_info *info = FUNC2(hdev);
	int r = 0;

	FUNC0(&info->info_lock);

	if (info->state != PN544_ST_COLD) {
		r = -EBUSY;
		goto out;
	}

	r = info->phy_ops->enable(info->phy_id);

	if (r == 0)
		info->state = PN544_ST_READY;

out:
	FUNC1(&info->info_lock);
	return r;
}