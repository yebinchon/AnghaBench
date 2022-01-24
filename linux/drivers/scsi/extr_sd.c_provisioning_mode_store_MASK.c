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
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 int SD_LBP_DISABLE ; 
 scalar_t__ TYPE_DISK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lbp_mode ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_disk*,int) ; 
 scalar_t__ FUNC2 (struct scsi_disk*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 struct scsi_disk* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct scsi_disk *sdkp = FUNC4(dev);
	struct scsi_device *sdp = sdkp->device;
	int mode;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (FUNC2(sdkp)) {
		FUNC1(sdkp, SD_LBP_DISABLE);
		return count;
	}

	if (sdp->type != TYPE_DISK)
		return -EINVAL;

	mode = FUNC3(lbp_mode, buf);
	if (mode < 0)
		return -EINVAL;

	FUNC1(sdkp, mode);

	return count;
}