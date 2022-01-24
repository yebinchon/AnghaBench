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
struct s3fwrn5_info {int /*<<< orphan*/  fw_info; TYPE_2__* ndev; } ;
struct TYPE_4__ {TYPE_1__* nfc_dev; int /*<<< orphan*/  manufact_specific_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3FWRN5_MODE_COLD ; 
 int /*<<< orphan*/  S3FWRN5_MODE_FW ; 
 int /*<<< orphan*/  S3FWRN5_MODE_NCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct s3fwrn5_info*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct s3fwrn5_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct s3fwrn5_info*,int) ; 

__attribute__((used)) static int FUNC9(struct s3fwrn5_info *info)
{
	bool need_update;
	int ret;

	FUNC4(&info->fw_info, "sec_s3fwrn5_firmware.bin");

	/* Update firmware */

	FUNC8(info, false);
	FUNC7(info, S3FWRN5_MODE_FW);

	ret = FUNC5(&info->fw_info);
	if (ret < 0)
		return ret;

	need_update = FUNC1(&info->fw_info,
		info->ndev->manufact_specific_info);
	if (!need_update)
		goto out;

	FUNC0(&info->ndev->nfc_dev->dev, "Detected new firmware version\n");

	ret = FUNC3(&info->fw_info);
	if (ret < 0)
		goto out;

	/* Update RF configuration */

	FUNC7(info, S3FWRN5_MODE_NCI);

	FUNC8(info, true);
	ret = FUNC6(info, "sec_s3fwrn5_rfreg.bin");
	FUNC8(info, false);

out:
	FUNC7(info, S3FWRN5_MODE_COLD);
	FUNC2(&info->fw_info);
	return ret;
}