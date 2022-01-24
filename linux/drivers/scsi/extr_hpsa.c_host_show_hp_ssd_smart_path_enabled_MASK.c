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
struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int offload_enabled; scalar_t__ devtype; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ TYPE_DISK ; 
 scalar_t__ TYPE_ZBC ; 
 struct ctlr_info* FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	     struct device_attribute *attr, char *buf)
{
	struct ctlr_info *h;
	struct scsi_device *sdev;
	struct hpsa_scsi_dev_t *hdev;
	unsigned long flags;
	int offload_enabled;

	sdev = FUNC4(dev);
	h = FUNC0(sdev);
	FUNC2(&h->lock, flags);
	hdev = sdev->hostdata;
	if (!hdev) {
		FUNC3(&h->lock, flags);
		return -ENODEV;
	}
	offload_enabled = hdev->offload_enabled;
	FUNC3(&h->lock, flags);

	if (hdev->devtype == TYPE_DISK || hdev->devtype == TYPE_ZBC)
		return FUNC1(buf, 20, "%d\n", offload_enabled);
	else
		return FUNC1(buf, 40, "%s\n",
				"Not applicable for a controller");
}