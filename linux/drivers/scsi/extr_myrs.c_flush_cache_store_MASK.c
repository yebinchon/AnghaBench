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
struct myrs_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EIO ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MYRS_IOCTL_FLUSH_DEVICE_DATA ; 
 int /*<<< orphan*/  MYRS_RAID_CONTROLLER ; 
 unsigned char MYRS_STATUS_SUCCESS ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 unsigned char FUNC1 (struct myrs_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,...) ; 
 struct myrs_hba* FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct myrs_hba *cs = FUNC3(shost);
	unsigned char status;

	status = FUNC1(cs, MYRS_IOCTL_FLUSH_DEVICE_DATA,
			     MYRS_RAID_CONTROLLER);
	if (status == MYRS_STATUS_SUCCESS) {
		FUNC2(KERN_INFO, shost, "Cache Flush Completed\n");
		return count;
	}
	FUNC2(KERN_INFO, shost,
		     "Cache Flush failed, status 0x%02x\n", status);
	return -EIO;
}