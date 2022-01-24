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
struct scsi_disk {unsigned int protection_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 unsigned int T10_PI_TYPE3_PROTECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,unsigned int*) ; 
 struct scsi_disk* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct scsi_disk *sdkp = FUNC2(dev);
	unsigned int val;
	int err;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	err = FUNC1(buf, 10, &val);

	if (err)
		return err;

	if (val <= T10_PI_TYPE3_PROTECTION)
		sdkp->protection_type = val;

	return count;
}