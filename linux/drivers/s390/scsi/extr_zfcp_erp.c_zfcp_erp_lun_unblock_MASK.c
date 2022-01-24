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
struct zfcp_scsi_dev {int /*<<< orphan*/  status; int /*<<< orphan*/  erp_action; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct zfcp_scsi_dev* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct scsi_device *sdev)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC1(sdev);

	if (FUNC3(ZFCP_STATUS_COMMON_UNBLOCKED,
				       &zfcp_sdev->status))
		FUNC2("erlubl1", &FUNC1(sdev)->erp_action);
	FUNC0(ZFCP_STATUS_COMMON_UNBLOCKED, &zfcp_sdev->status);
}