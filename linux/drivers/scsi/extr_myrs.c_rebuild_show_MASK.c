#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {scalar_t__ channel; struct myrs_ldev_info* hostdata; int /*<<< orphan*/  host; } ;
struct myrs_ldev_info {unsigned short ldev_num; scalar_t__ cfg_devsize; scalar_t__ rbld_lba; scalar_t__ rbld_active; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ physchan_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned char MYRS_STATUS_SUCCESS ; 
 unsigned char FUNC0 (struct myrs_hba*,unsigned short,struct myrs_ldev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_device*,char*,unsigned char) ; 
 struct myrs_hba* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct myrs_hba *cs = FUNC2(sdev->host);
	struct myrs_ldev_info *ldev_info;
	unsigned short ldev_num;
	unsigned char status;

	if (sdev->channel < cs->ctlr_info->physchan_present)
		return FUNC3(buf, 32, "physical device - not rebuilding\n");

	ldev_info = sdev->hostdata;
	ldev_num = ldev_info->ldev_num;
	status = FUNC0(cs, ldev_num, ldev_info);
	if (status != MYRS_STATUS_SUCCESS) {
		FUNC1(KERN_INFO, sdev,
			    "Failed to get device information, status 0x%02x\n",
			    status);
		return -EIO;
	}
	if (ldev_info->rbld_active) {
		return FUNC3(buf, 32, "rebuilding block %zu of %zu\n",
				(size_t)ldev_info->rbld_lba,
				(size_t)ldev_info->cfg_devsize);
	} else
		return FUNC3(buf, 32, "not rebuilding\n");
}