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
struct pqi_scsi_dev {int dummy; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  lun_reset_mutex; } ;

/* Variables and functions */
 int FAILED ; 
 int FUNC0 (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ; 
 int FUNC9 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static int FUNC10(struct pqi_ctrl_info *ctrl_info,
	struct pqi_scsi_dev *device)
{
	int rc;

	FUNC1(&ctrl_info->lun_reset_mutex);

	FUNC3(ctrl_info);
	FUNC5(ctrl_info);
	FUNC8(ctrl_info, device);
	rc = FUNC9(ctrl_info);
	FUNC7(device);
	FUNC4(ctrl_info);

	if (rc)
		rc = FAILED;
	else
		rc = FUNC0(ctrl_info, device);

	FUNC6(device);

	FUNC2(&ctrl_info->lun_reset_mutex);

	return rc;
}