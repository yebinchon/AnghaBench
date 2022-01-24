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
struct TYPE_2__ {int /*<<< orphan*/  tx_work; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct st21nfca_hci_info* FUNC1 (struct nfc_hci_dev*) ; 

void FUNC2(struct nfc_hci_dev *hdev)
{
	struct st21nfca_hci_info *info = FUNC1(hdev);

	FUNC0(&info->dep_info.tx_work);
}