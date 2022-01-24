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
struct scsi_disk {int /*<<< orphan*/  protection_type; struct scsi_device* device; } ;
struct scsi_device {int /*<<< orphan*/  host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  T10_PI_TYPE0_PROTECTION ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 struct scsi_disk* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	struct scsi_disk *sdkp = FUNC3(dev);
	struct scsi_device *sdp = sdkp->device;
	unsigned int dif, dix;

	dif = FUNC0(sdp->host, sdkp->protection_type);
	dix = FUNC1(sdp->host, sdkp->protection_type);

	if (!dix && FUNC1(sdp->host, T10_PI_TYPE0_PROTECTION)) {
		dif = 0;
		dix = 1;
	}

	if (!dif && !dix)
		return FUNC2(buf, "none\n");

	return FUNC2(buf, "%s%u\n", dix ? "dix" : "dif", dif);
}