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
struct hpsa_scsi_dev_t {unsigned char raid_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned char RAID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct hpsa_scsi_dev_t*) ; 
 char** raid_label ; 
 struct ctlr_info* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct scsi_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
	     struct device_attribute *attr, char *buf)
{
	ssize_t l = 0;
	unsigned char rlevel;
	struct ctlr_info *h;
	struct scsi_device *sdev;
	struct hpsa_scsi_dev_t *hdev;
	unsigned long flags;

	sdev = FUNC5(dev);
	h = FUNC1(sdev);
	FUNC3(&h->lock, flags);
	hdev = sdev->hostdata;
	if (!hdev) {
		FUNC4(&h->lock, flags);
		return -ENODEV;
	}

	/* Is this even a logical drive? */
	if (!FUNC0(hdev)) {
		FUNC4(&h->lock, flags);
		l = FUNC2(buf, PAGE_SIZE, "N/A\n");
		return l;
	}

	rlevel = hdev->raid_level;
	FUNC4(&h->lock, flags);
	if (rlevel > RAID_UNKNOWN)
		rlevel = RAID_UNKNOWN;
	l = FUNC2(buf, PAGE_SIZE, "RAID %s\n", raid_label[rlevel]);
	return l;
}