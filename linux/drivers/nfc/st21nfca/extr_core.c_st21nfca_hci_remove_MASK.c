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
struct st21nfca_hci_info {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st21nfca_hci_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_hci_dev*) ; 
 struct st21nfca_hci_info* FUNC2 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_hci_dev*) ; 

void FUNC6(struct nfc_hci_dev *hdev)
{
	struct st21nfca_hci_info *info = FUNC2(hdev);

	FUNC4(hdev);
	FUNC5(hdev);
	FUNC3(hdev);
	FUNC1(hdev);
	FUNC0(info);
}