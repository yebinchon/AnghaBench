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
struct scsi_disk {unsigned long max_ws_blocks; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; int no_write_same; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EINVAL ; 
 unsigned long SD_MAX_WS16_BLOCKS ; 
 scalar_t__ TYPE_DISK ; 
 scalar_t__ TYPE_ZBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_disk*) ; 
 struct scsi_disk* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct scsi_disk *sdkp = FUNC3(dev);
	struct scsi_device *sdp = sdkp->device;
	unsigned long max;
	int err;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (sdp->type != TYPE_DISK && sdp->type != TYPE_ZBC)
		return -EINVAL;

	err = FUNC1(buf, 10, &max);

	if (err)
		return err;

	if (max == 0)
		sdp->no_write_same = 1;
	else if (max <= SD_MAX_WS16_BLOCKS) {
		sdp->no_write_same = 0;
		sdkp->max_ws_blocks = max;
	}

	FUNC2(sdkp);

	return count;
}