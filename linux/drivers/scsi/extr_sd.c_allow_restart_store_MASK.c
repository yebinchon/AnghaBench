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
struct scsi_device {scalar_t__ type; int allow_restart; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 scalar_t__ TYPE_DISK ; 
 scalar_t__ TYPE_ZBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int*) ; 
 struct scsi_disk* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
		    const char *buf, size_t count)
{
	bool v;
	struct scsi_disk *sdkp = FUNC2(dev);
	struct scsi_device *sdp = sdkp->device;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (sdp->type != TYPE_DISK && sdp->type != TYPE_ZBC)
		return -EINVAL;

	if (FUNC1(buf, &v))
		return -EINVAL;

	sdp->allow_restart = v;

	return count;
}