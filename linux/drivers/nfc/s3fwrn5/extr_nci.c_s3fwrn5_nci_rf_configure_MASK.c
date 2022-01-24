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
typedef  int u32 ;
struct s3fwrn5_info {TYPE_2__* ndev; } ;
struct nci_prop_stop_rfreg_cmd {int checksum; } ;
struct nci_prop_set_rfreg_cmd {scalar_t__ index; int /*<<< orphan*/  data; } ;
struct nci_prop_fw_cfg_cmd {int clk_type; int clk_speed; int clk_req; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  stop_rfreg ;
typedef  int /*<<< orphan*/  fw_cfg ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_4__ {TYPE_1__* nfc_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_PROP_FW_CFG ; 
 int /*<<< orphan*/  NCI_PROP_SET_RFREG ; 
 int /*<<< orphan*/  NCI_PROP_START_RFREG ; 
 int /*<<< orphan*/  NCI_PROP_STOP_RFREG ; 
 int S3FWRN5_RFREG_SECTION_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

int FUNC6(struct s3fwrn5_info *info, const char *fw_name)
{
	const struct firmware *fw;
	struct nci_prop_fw_cfg_cmd fw_cfg;
	struct nci_prop_set_rfreg_cmd set_rfreg;
	struct nci_prop_stop_rfreg_cmd stop_rfreg;
	u32 checksum;
	int i, len;
	int ret;

	ret = FUNC5(&fw, fw_name, &info->ndev->nfc_dev->dev);
	if (ret < 0)
		return ret;

	/* Compute rfreg checksum */

	checksum = 0;
	for (i = 0; i < fw->size; i += 4)
		checksum += *((u32 *)(fw->data+i));

	/* Set default clock configuration for external crystal */

	fw_cfg.clk_type = 0x01;
	fw_cfg.clk_speed = 0xff;
	fw_cfg.clk_req = 0xff;
	ret = FUNC3(info->ndev, NCI_PROP_FW_CFG,
		sizeof(fw_cfg), (__u8 *)&fw_cfg);
	if (ret < 0)
		goto out;

	/* Start rfreg configuration */

	FUNC1(&info->ndev->nfc_dev->dev,
		"rfreg configuration update: %s\n", fw_name);

	ret = FUNC3(info->ndev, NCI_PROP_START_RFREG, 0, NULL);
	if (ret < 0) {
		FUNC0(&info->ndev->nfc_dev->dev,
			"Unable to start rfreg update\n");
		goto out;
	}

	/* Update rfreg */

	set_rfreg.index = 0;
	for (i = 0; i < fw->size; i += S3FWRN5_RFREG_SECTION_SIZE) {
		len = (fw->size - i < S3FWRN5_RFREG_SECTION_SIZE) ?
			(fw->size - i) : S3FWRN5_RFREG_SECTION_SIZE;
		FUNC2(set_rfreg.data, fw->data+i, len);
		ret = FUNC3(info->ndev, NCI_PROP_SET_RFREG,
			len+1, (__u8 *)&set_rfreg);
		if (ret < 0) {
			FUNC0(&info->ndev->nfc_dev->dev,
				"rfreg update error (code=%d)\n", ret);
			goto out;
		}
		set_rfreg.index++;
	}

	/* Finish rfreg configuration */

	stop_rfreg.checksum = checksum & 0xffff;
	ret = FUNC3(info->ndev, NCI_PROP_STOP_RFREG,
		sizeof(stop_rfreg), (__u8 *)&stop_rfreg);
	if (ret < 0) {
		FUNC0(&info->ndev->nfc_dev->dev,
			"Unable to stop rfreg update\n");
		goto out;
	}

	FUNC1(&info->ndev->nfc_dev->dev,
		"rfreg configuration update: success\n");
out:
	FUNC4(fw);
	return ret;
}