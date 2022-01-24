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
typedef  int /*<<< orphan*/  u64 ;
struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int /*<<< orphan*/  sas_address; int /*<<< orphan*/  expose_device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct hpsa_scsi_dev_t*) ; 
 struct ctlr_info* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct scsi_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
	      struct device_attribute *attr, char *buf)
{
	struct ctlr_info *h;
	struct scsi_device *sdev;
	struct hpsa_scsi_dev_t *hdev;
	unsigned long flags;
	u64 sas_address;

	sdev = FUNC5(dev);
	h = FUNC1(sdev);
	FUNC3(&h->lock, flags);
	hdev = sdev->hostdata;
	if (!hdev || FUNC0(hdev) || !hdev->expose_device) {
		FUNC4(&h->lock, flags);
		return -ENODEV;
	}
	sas_address = hdev->sas_address;
	FUNC4(&h->lock, flags);

	return FUNC2(buf, PAGE_SIZE, "0x%016llx\n", sas_address);
}