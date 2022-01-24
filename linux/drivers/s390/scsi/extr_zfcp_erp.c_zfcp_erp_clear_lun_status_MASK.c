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
struct zfcp_scsi_dev {int /*<<< orphan*/  erp_counter; int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zfcp_scsi_dev* FUNC2 (struct scsi_device*) ; 

void FUNC3(struct scsi_device *sdev, u32 mask)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC2(sdev);

	FUNC0(mask, &zfcp_sdev->status);

	if (mask & ZFCP_STATUS_COMMON_ERP_FAILED)
		FUNC1(&zfcp_sdev->erp_counter, 0);
}