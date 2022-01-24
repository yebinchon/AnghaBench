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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {TYPE_1__* se_status; } ;
struct st_nci_info {TYPE_2__ se_info; int /*<<< orphan*/  flags; } ;
struct nci_dev {int /*<<< orphan*/  nfc_dev; } ;
struct TYPE_3__ {scalar_t__ is_ese_present; scalar_t__ is_uicc_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_HCI_ADMIN_GATE ; 
 int /*<<< orphan*/  NCI_HCI_ADMIN_PARAM_WHITELIST ; 
 int NCI_HCI_ANY_OK ; 
 int /*<<< orphan*/  NFC_SE_EMBEDDED ; 
 int /*<<< orphan*/  NFC_SE_UICC ; 
 int /*<<< orphan*/  ST_NCI_ESE_HOST_ID ; 
 int /*<<< orphan*/  ST_NCI_FACTORY_MODE ; 
 int /*<<< orphan*/  ST_NCI_UICC_HOST_ID ; 
 struct st_nci_info* FUNC0 (struct nci_dev*) ; 
 int FUNC1 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct nci_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct nci_dev *ndev)
{
	u8 white_list[2];
	int r, wl_size = 0;
	int se_count = 0;
	struct st_nci_info *info = FUNC0(ndev);

	FUNC3("st_nci_discover_se\n");

	r = FUNC4(ndev);
	if (r != 0)
		return r;

	if (FUNC5(ST_NCI_FACTORY_MODE, &info->flags))
		return 0;

	if (info->se_info.se_status->is_uicc_present)
		white_list[wl_size++] = ST_NCI_UICC_HOST_ID;
	if (info->se_info.se_status->is_ese_present)
		white_list[wl_size++] = ST_NCI_ESE_HOST_ID;

	if (wl_size) {
		r = FUNC1(ndev, NCI_HCI_ADMIN_GATE,
				      NCI_HCI_ADMIN_PARAM_WHITELIST,
				      white_list, wl_size);
		if (r != NCI_HCI_ANY_OK)
			return r;
	}

	if (info->se_info.se_status->is_uicc_present) {
		FUNC2(ndev->nfc_dev, ST_NCI_UICC_HOST_ID, NFC_SE_UICC);
		se_count++;
	}

	if (info->se_info.se_status->is_ese_present) {
		FUNC2(ndev->nfc_dev, ST_NCI_ESE_HOST_ID, NFC_SE_EMBEDDED);
		se_count++;
	}

	return !se_count;
}