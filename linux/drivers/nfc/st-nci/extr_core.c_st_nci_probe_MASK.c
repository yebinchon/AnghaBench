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
typedef  int u32 ;
struct st_nci_se_status {int dummy; } ;
struct st_nci_info {struct llt_ndlc* ndlc; } ;
struct llt_ndlc {int /*<<< orphan*/  ndev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NFC_PROTO_FELICA_MASK ; 
 int NFC_PROTO_ISO14443_B_MASK ; 
 int NFC_PROTO_ISO14443_MASK ; 
 int NFC_PROTO_ISO15693_MASK ; 
 int NFC_PROTO_JEWEL_MASK ; 
 int NFC_PROTO_MIFARE_MASK ; 
 int NFC_PROTO_NFC_DEP_MASK ; 
 struct st_nci_info* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct st_nci_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  st_nci_ops ; 
 int FUNC6 (int /*<<< orphan*/ ,struct st_nci_se_status*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct llt_ndlc *ndlc, int phy_headroom,
		 int phy_tailroom, struct st_nci_se_status *se_status)
{
	struct st_nci_info *info;
	int r;
	u32 protocols;

	info = FUNC0(ndlc->dev,
			sizeof(struct st_nci_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	protocols = NFC_PROTO_JEWEL_MASK
		| NFC_PROTO_MIFARE_MASK
		| NFC_PROTO_FELICA_MASK
		| NFC_PROTO_ISO14443_MASK
		| NFC_PROTO_ISO14443_B_MASK
		| NFC_PROTO_ISO15693_MASK
		| NFC_PROTO_NFC_DEP_MASK;

	ndlc->ndev = FUNC1(&st_nci_ops, protocols,
					phy_headroom, phy_tailroom);
	if (!ndlc->ndev) {
		FUNC5("Cannot allocate nfc ndev\n");
		return -ENOMEM;
	}
	info->ndlc = ndlc;

	FUNC4(ndlc->ndev, info);

	r = FUNC7(ndlc->ndev);
	if (r) {
		FUNC5("Cannot register proprietary vendor cmds\n");
		goto err_reg_dev;
	}

	r = FUNC3(ndlc->ndev);
	if (r) {
		FUNC5("Cannot register nfc device to nci core\n");
		goto err_reg_dev;
	}

	return FUNC6(ndlc->ndev, se_status);

err_reg_dev:
	FUNC2(ndlc->ndev);
	return r;
}