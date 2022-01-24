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
struct zfcp_scsi_dev {int /*<<< orphan*/  erp_action; int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int ZFCP_STATUS_COMMON_ERP_INUSE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct zfcp_scsi_dev* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct scsi_device *sdev)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC1(sdev);

	if (FUNC0(&zfcp_sdev->status) & ZFCP_STATUS_COMMON_ERP_INUSE)
		FUNC2(&zfcp_sdev->erp_action);
}