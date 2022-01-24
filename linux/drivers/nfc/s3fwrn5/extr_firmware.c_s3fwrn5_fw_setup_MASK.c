#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sig; int /*<<< orphan*/  custom_sig; int /*<<< orphan*/  sig_size; int /*<<< orphan*/  custom_sig_size; } ;
struct s3fwrn5_fw_info {TYPE_3__ fw; int /*<<< orphan*/  sig; int /*<<< orphan*/  sig_size; int /*<<< orphan*/  sector_size; TYPE_2__* ndev; int /*<<< orphan*/  base_addr; } ;
struct s3fwrn5_fw_cmd_get_bootinfo_rsp {int /*<<< orphan*/  sector_size; } ;
struct TYPE_5__ {TYPE_1__* nfc_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct s3fwrn5_fw_cmd_get_bootinfo_rsp*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct s3fwrn5_fw_info*,struct s3fwrn5_fw_cmd_get_bootinfo_rsp*) ; 
 scalar_t__ FUNC3 (struct s3fwrn5_fw_cmd_get_bootinfo_rsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3fwrn5_fw_info*) ; 
 int FUNC5 (struct s3fwrn5_fw_info*) ; 

int FUNC6(struct s3fwrn5_fw_info *fw_info)
{
	struct s3fwrn5_fw_cmd_get_bootinfo_rsp bootinfo;
	int ret;

	/* Get firmware data */

	ret = FUNC5(fw_info);
	if (ret < 0) {
		FUNC0(&fw_info->ndev->nfc_dev->dev,
			"Failed to get fw file, ret=%02x\n", ret);
		return ret;
	}

	/* Get bootloader info */

	ret = FUNC2(fw_info, &bootinfo);
	if (ret < 0) {
		FUNC0(&fw_info->ndev->nfc_dev->dev,
			"Failed to get bootinfo, ret=%02x\n", ret);
		goto err;
	}

	/* Match hardware version to obtain firmware base address */

	ret = FUNC1(&bootinfo, &fw_info->base_addr);
	if (ret < 0) {
		FUNC0(&fw_info->ndev->nfc_dev->dev,
			"Unknown hardware version\n");
		goto err;
	}

	fw_info->sector_size = bootinfo.sector_size;

	fw_info->sig_size = FUNC3(&bootinfo) ?
		fw_info->fw.custom_sig_size : fw_info->fw.sig_size;
	fw_info->sig = FUNC3(&bootinfo) ?
		fw_info->fw.custom_sig : fw_info->fw.sig;

	return 0;

err:
	FUNC4(fw_info);
	return ret;
}