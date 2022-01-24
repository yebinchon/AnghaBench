#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nfcmrvl_fw_dnld {int /*<<< orphan*/  state; struct nfcmrvl_fw const* header; int /*<<< orphan*/  timer; TYPE_2__* binary_config; TYPE_6__* fw; int /*<<< orphan*/  name; } ;
struct nfcmrvl_private {scalar_t__ phy; struct nfcmrvl_fw_dnld fw_dnld; TYPE_5__* ndev; TYPE_3__* if_ops; int /*<<< orphan*/  dev; int /*<<< orphan*/  support_fw_dnld; } ;
struct TYPE_11__ {int /*<<< orphan*/  config; } ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct nfcmrvl_fw {scalar_t__ magic; scalar_t__ phy; TYPE_4__ bootrom; TYPE_2__ firmware; TYPE_2__ helper; } ;
struct nci_dev {TYPE_1__* nfc_dev; } ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {int /*<<< orphan*/  cmd_cnt; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* nci_update_config ) (struct nfcmrvl_private*,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FW_DNLD_TIMEOUT ; 
 scalar_t__ NFCMRVL_FW_MAGIC ; 
 int /*<<< orphan*/  STATE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  fw_dnld_timeout ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfcmrvl_private* FUNC3 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (TYPE_6__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfcmrvl_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct nci_dev *ndev, const char *firmware_name)
{
	struct nfcmrvl_private *priv = FUNC3(ndev);
	struct nfcmrvl_fw_dnld *fw_dnld = &priv->fw_dnld;
	int res;

	if (!priv->support_fw_dnld)
		return -ENOTSUPP;

	if (!firmware_name || !firmware_name[0])
		return -EINVAL;

	FUNC9(fw_dnld->name, firmware_name);

	/*
	 * Retrieve FW binary file and parse it to initialize FW download
	 * state machine.
	 */

	/* Retrieve FW binary */
	res = FUNC8(&fw_dnld->fw, firmware_name,
			       &ndev->nfc_dev->dev);
	if (res < 0) {
		FUNC4(priv->dev, "failed to retrieve FW %s", firmware_name);
		return -ENOENT;
	}

	fw_dnld->header = (const struct nfcmrvl_fw *) priv->fw_dnld.fw->data;

	if (fw_dnld->header->magic != NFCMRVL_FW_MAGIC ||
	    fw_dnld->header->phy != priv->phy) {
		FUNC4(priv->dev, "bad firmware binary %s magic=0x%x phy=%d",
			firmware_name, fw_dnld->header->magic,
			fw_dnld->header->phy);
		FUNC7(fw_dnld->fw);
		fw_dnld->header = NULL;
		return -EINVAL;
	}

	if (fw_dnld->header->helper.offset != 0) {
		FUNC5(priv->dev, "loading helper");
		fw_dnld->binary_config = &fw_dnld->header->helper;
	} else {
		FUNC5(priv->dev, "loading firmware");
		fw_dnld->binary_config = &fw_dnld->header->firmware;
	}

	/* Configure a timer for timeout */
	FUNC11(&priv->fw_dnld.timer, fw_dnld_timeout, 0);
	FUNC1(&priv->fw_dnld.timer,
		  jiffies + FUNC2(FW_DNLD_TIMEOUT));

	/* Ronfigure HI to be sure that it is the bootrom values */
	priv->if_ops->nci_update_config(priv,
					&fw_dnld->header->bootrom.config);

	/* Allow first command */
	FUNC0(&priv->ndev->cmd_cnt, 1);

	/* First, reset the chip */
	priv->fw_dnld.state = STATE_RESET;
	FUNC6(priv);

	/* Now wait for CORE_RESET_NTF or timeout */

	return 0;
}