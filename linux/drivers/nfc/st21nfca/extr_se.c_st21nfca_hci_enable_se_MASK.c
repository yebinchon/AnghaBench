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
typedef  int /*<<< orphan*/  u32 ;
struct nfc_hci_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_APDU_READER_GATE ; 
 int ST21NFCA_ESE_HOST_ID ; 
 int /*<<< orphan*/  ST21NFCA_EVT_SE_SOFT_RESET ; 
 int /*<<< orphan*/  ST21NFCA_SE_MODE_ON ; 
 int FUNC0 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_hci_dev*) ; 

int FUNC4(struct nfc_hci_dev *hdev, u32 se_idx)
{
	int r;

	/*
	 * According to upper layer, se_idx == NFC_SE_UICC when
	 * info->se_status->is_uicc_enable is true should never happen.
	 * Same for eSE.
	 */
	r = FUNC2(hdev, se_idx, ST21NFCA_SE_MODE_ON);
	if (r == ST21NFCA_ESE_HOST_ID) {
		FUNC3(hdev);
		r = FUNC0(hdev, ST21NFCA_APDU_READER_GATE,
				ST21NFCA_EVT_SE_SOFT_RESET, NULL, 0);
		if (r < 0)
			return r;
	} else if (r < 0) {
		/*
		 * The activation tentative failed, the secure element
		 * is not connected. Remove from the list.
		 */
		FUNC1(hdev->ndev, se_idx);
		return r;
	}

	return 0;
}