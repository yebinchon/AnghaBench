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
struct st21nfca_hci_info {int /*<<< orphan*/  state; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_DEVICE_MGNT_GATE ; 
 int /*<<< orphan*/  ST21NFCA_DM_DISCONNECT ; 
 int /*<<< orphan*/  ST21NFCA_ST_READY ; 
 struct st21nfca_hci_info* FUNC0 (struct nfc_hci_dev*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct nfc_hci_dev *hdev)
{
	struct st21nfca_hci_info *info = FUNC0(hdev);

	info->state = ST21NFCA_ST_READY;

	return FUNC1(hdev, ST21NFCA_DEVICE_MGNT_GATE,
				ST21NFCA_DM_DISCONNECT, NULL, 0, NULL);
}