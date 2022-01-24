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
typedef  scalar_t__ u32 ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFC_SE_EMBEDDED ; 
 int /*<<< orphan*/  ST_NCI_APDU_READER_GATE ; 
 int /*<<< orphan*/  ST_NCI_EVT_SE_END_OF_APDU_TRANSFER ; 
 int /*<<< orphan*/  ST_NCI_SE_MODE_OFF ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct nci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3(struct nci_dev *ndev, u32 se_idx)
{
	int r;

	FUNC1("st_nci_disable_se\n");

	/*
	 * According to upper layer, se_idx == NFC_SE_UICC when
	 * info->se_info.se_status->is_uicc_enable is true should never happen
	 * Same for eSE.
	 */
	r = FUNC2(ndev, se_idx, ST_NCI_SE_MODE_OFF);
	if (r < 0) {
		/* Do best effort to release SWP */
		if (se_idx == NFC_SE_EMBEDDED) {
			r = FUNC0(ndev, ST_NCI_APDU_READER_GATE,
					ST_NCI_EVT_SE_END_OF_APDU_TRANSFER,
					NULL, 0);
		}
		return r;
	}

	return 0;
}