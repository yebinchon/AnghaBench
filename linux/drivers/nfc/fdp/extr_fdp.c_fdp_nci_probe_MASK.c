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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct nfc_phy_ops {int dummy; } ;
struct nci_dev {int dummy; } ;
struct fdp_nci_info {int clock_freq; struct nci_dev* ndev; int /*<<< orphan*/  setup_wq; int /*<<< orphan*/ * fw_vsc_cfg; int /*<<< orphan*/  clock_type; struct nfc_phy_ops* phy_ops; struct fdp_i2c_phy* phy; } ;
struct fdp_i2c_phy {TYPE_1__* i2c_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

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
 struct fdp_nci_info* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nci_dev* FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*) ; 
 int /*<<< orphan*/  nci_ops ; 
 int FUNC4 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_dev*,struct fdp_nci_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 

int FUNC7(struct fdp_i2c_phy *phy, struct nfc_phy_ops *phy_ops,
			struct nci_dev **ndevp, int tx_headroom,
			int tx_tailroom, u8 clock_type, u32 clock_freq,
			u8 *fw_vsc_cfg)
{
	struct device *dev = &phy->i2c_dev->dev;
	struct fdp_nci_info *info;
	struct nci_dev *ndev;
	u32 protocols;
	int r;

	info = FUNC0(dev, sizeof(struct fdp_nci_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->phy = phy;
	info->phy_ops = phy_ops;
	info->clock_type = clock_type;
	info->clock_freq = clock_freq;
	info->fw_vsc_cfg = fw_vsc_cfg;

	FUNC1(&info->setup_wq);

	protocols = NFC_PROTO_JEWEL_MASK |
		    NFC_PROTO_MIFARE_MASK |
		    NFC_PROTO_FELICA_MASK |
		    NFC_PROTO_ISO14443_MASK |
		    NFC_PROTO_ISO14443_B_MASK |
		    NFC_PROTO_NFC_DEP_MASK |
		    NFC_PROTO_ISO15693_MASK;

	ndev = FUNC2(&nci_ops, protocols, tx_headroom,
				   tx_tailroom);
	if (!ndev) {
		FUNC6(dev, "Cannot allocate nfc ndev\n");
		return -ENOMEM;
	}

	r = FUNC4(ndev);
	if (r)
		goto err_regdev;

	*ndevp = ndev;
	info->ndev = ndev;

	FUNC5(ndev, info);

	return 0;

err_regdev:
	FUNC3(ndev);
	return r;
}