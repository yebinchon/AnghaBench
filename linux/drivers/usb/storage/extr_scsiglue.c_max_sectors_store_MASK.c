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
struct scsi_device {int /*<<< orphan*/  request_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 
 scalar_t__ FUNC1 (char const*,char*,unsigned short*) ; 
 struct scsi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr, const char *buf,
		size_t count)
{
	struct scsi_device *sdev = FUNC2(dev);
	unsigned short ms;

	if (FUNC1(buf, "%hu", &ms) > 0) {
		FUNC0(sdev->request_queue, ms);
		return count;
	}
	return -EINVAL;
}