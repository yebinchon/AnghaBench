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
struct scsi_device {scalar_t__ channel; int no_uld_attach; scalar_t__ lun; int tagged_supported; struct myrb_ldev_info* hostdata; int /*<<< orphan*/  host; } ;
struct myrb_ldev_info {scalar_t__ state; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ MYRB_DEVICE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev)
{
	struct myrb_ldev_info *ldev_info;

	if (sdev->channel > FUNC1(sdev->host))
		return -ENXIO;

	if (sdev->channel < FUNC1(sdev->host)) {
		sdev->no_uld_attach = 1;
		return 0;
	}
	if (sdev->lun != 0)
		return -ENXIO;

	ldev_info = sdev->hostdata;
	if (!ldev_info)
		return -ENXIO;
	if (ldev_info->state != MYRB_DEVICE_ONLINE)
		FUNC2(KERN_INFO, sdev,
			    "Logical drive is %s\n",
			    FUNC0(ldev_info->state));

	sdev->tagged_supported = 1;
	return 0;
}