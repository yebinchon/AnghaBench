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
struct myrs_ldev_info {unsigned short ldev_num; scalar_t__ cfg_devsize; scalar_t__ cc_lba; scalar_t__ cc_active; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ physchan_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 unsigned char FUNC0 (struct myrs_hba*,unsigned short,struct myrs_ldev_info*) ; 
 struct myrs_hba* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 struct scsi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct scsi_device *sdev = FUNC3(dev);
	struct myrs_hba *cs = FUNC1(sdev->host);
	struct myrs_ldev_info *ldev_info;
	unsigned short ldev_num;
	unsigned char status;

	if (sdev->channel < cs->ctlr_info->physchan_present)
		return FUNC2(buf, 32, "physical device - not checking\n");

	ldev_info = sdev->hostdata;
	if (!ldev_info)
		return -ENXIO;
	ldev_num = ldev_info->ldev_num;
	status = FUNC0(cs, ldev_num, ldev_info);
	if (ldev_info->cc_active)
		return FUNC2(buf, 32, "checking block %zu of %zu\n",
				(size_t)ldev_info->cc_lba,
				(size_t)ldev_info->cfg_devsize);
	else
		return FUNC2(buf, 32, "not checking\n");
}