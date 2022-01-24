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
struct nci_dev {int /*<<< orphan*/  nfc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_NCI_APDU_READER_GATE ; 
 int ST_NCI_ESE_HOST_ID ; 
 int /*<<< orphan*/  ST_NCI_EVT_SE_SOFT_RESET ; 
 int /*<<< orphan*/  ST_NCI_SE_MODE_ON ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nci_dev*) ; 

int FUNC5(struct nci_dev *ndev, u32 se_idx)
{
	int r;

	FUNC2("st_nci_enable_se\n");

	/*
	 * According to upper layer, se_idx == NFC_SE_UICC when
	 * info->se_info.se_status->is_uicc_enable is true should never happen.
	 * Same for eSE.
	 */
	r = FUNC3(ndev, se_idx, ST_NCI_SE_MODE_ON);
	if (r == ST_NCI_ESE_HOST_ID) {
		FUNC4(ndev);
		r = FUNC0(ndev, ST_NCI_APDU_READER_GATE,
				ST_NCI_EVT_SE_SOFT_RESET, NULL, 0);
	}

	if (r < 0) {
		/*
		 * The activation procedure failed, the secure element
		 * is not connected. Remove from the list.
		 */
		FUNC1(ndev->nfc_dev, se_idx);
		return r;
	}

	return 0;
}