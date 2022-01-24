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
struct zfcp_scsi_dev {int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ACCESS_DENIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct zfcp_scsi_dev* FUNC1 (struct scsi_device*) ; 

__attribute__((used)) static void FUNC2(struct scsi_device *sdev)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC1(sdev);

	FUNC0(ZFCP_STATUS_COMMON_ACCESS_DENIED,
			  &zfcp_sdev->status);
}