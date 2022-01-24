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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  reset_n_io; scalar_t__ hci_muxed; } ;
struct nfcmrvl_private {int phy; TYPE_1__ config; int /*<<< orphan*/  ndev; struct device* dev; struct nfcmrvl_if_ops* if_ops; void* drv_data; } ;
struct nfcmrvl_platform_data {int dummy; } ;
struct nfcmrvl_if_ops {int dummy; } ;
struct device {int dummy; } ;
typedef  enum nfcmrvl_phy { ____Placeholder_nfcmrvl_phy } nfcmrvl_phy ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 struct nfcmrvl_private* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int NCI_SPI_HDR_LEN ; 
 scalar_t__ NFCMRVL_HCI_EVENT_HEADER_SIZE ; 
 int NFCMRVL_PHY_SPI ; 
 int NFC_PROTO_FELICA_MASK ; 
 int NFC_PROTO_ISO14443_B_MASK ; 
 int NFC_PROTO_ISO14443_MASK ; 
 int NFC_PROTO_ISO15693_MASK ; 
 int NFC_PROTO_JEWEL_MASK ; 
 int NFC_PROTO_MIFARE_MASK ; 
 int NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfcmrvl_private*) ; 
 struct nfcmrvl_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct nfcmrvl_platform_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfcmrvl_private*) ; 
 int FUNC15 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  nfcmrvl_nci_ops ; 

struct nfcmrvl_private *FUNC16(enum nfcmrvl_phy phy,
				void *drv_data,
				struct nfcmrvl_if_ops *ops,
				struct device *dev,
				struct nfcmrvl_platform_data *pdata)
{
	struct nfcmrvl_private *priv;
	int rc;
	int headroom;
	int tailroom;
	u32 protocols;

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return FUNC0(-ENOMEM);

	priv->drv_data = drv_data;
	priv->if_ops = ops;
	priv->dev = dev;
	priv->phy = phy;

	FUNC6(&priv->config, pdata, sizeof(*pdata));

	if (FUNC2(priv->config.reset_n_io)) {
		rc = FUNC3(priv->config.reset_n_io,
				      GPIOF_OUT_INIT_LOW,
				      "nfcmrvl_reset_n");
		if (rc < 0) {
			priv->config.reset_n_io = -EINVAL;
			FUNC11(dev, "failed to request reset_n io\n");
		}
	}

	if (phy == NFCMRVL_PHY_SPI) {
		headroom = NCI_SPI_HDR_LEN;
		tailroom = 1;
	} else
		headroom = tailroom = 0;

	if (priv->config.hci_muxed)
		headroom += NFCMRVL_HCI_EVENT_HEADER_SIZE;

	protocols = NFC_PROTO_JEWEL_MASK
		| NFC_PROTO_MIFARE_MASK
		| NFC_PROTO_FELICA_MASK
		| NFC_PROTO_ISO14443_MASK
		| NFC_PROTO_ISO14443_B_MASK
		| NFC_PROTO_ISO15693_MASK
		| NFC_PROTO_NFC_DEP_MASK;

	priv->ndev = FUNC7(&nfcmrvl_nci_ops, protocols,
					 headroom, tailroom);
	if (!priv->ndev) {
		FUNC11(dev, "nci_allocate_device failed\n");
		rc = -ENOMEM;
		goto error_free_gpio;
	}

	rc = FUNC15(priv);
	if (rc) {
		FUNC11(dev, "failed to initialize FW download %d\n", rc);
		goto error_free_dev;
	}

	FUNC10(priv->ndev, priv);

	rc = FUNC9(priv->ndev);
	if (rc) {
		FUNC11(dev, "nci_register_device failed %d\n", rc);
		goto error_fw_dnld_deinit;
	}

	/* Ensure that controller is powered off */
	FUNC13(priv);

	FUNC12(dev, "registered with nci successfully\n");
	return priv;

error_fw_dnld_deinit:
	FUNC14(priv);
error_free_dev:
	FUNC8(priv->ndev);
error_free_gpio:
	if (FUNC2(priv->config.reset_n_io))
		FUNC1(priv->config.reset_n_io);
	FUNC4(priv);
	return FUNC0(rc);
}