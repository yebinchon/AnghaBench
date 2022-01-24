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
struct scsi_device {int /*<<< orphan*/  tagged_supported; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_device*,char*) ; 
 struct scsi_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct scsi_device *sdev = FUNC1(dev);

	if (!sdev->tagged_supported)
		return -EINVAL;
		
	FUNC0(KERN_INFO, sdev,
		    "ignoring write to deprecated queue_type attribute");
	return count;
}