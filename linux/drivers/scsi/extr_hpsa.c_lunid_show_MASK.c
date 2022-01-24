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
struct hpsa_scsi_dev_t {int /*<<< orphan*/  scsi3addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  lunid ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 struct ctlr_info* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned char*) ; 
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
	unsigned char lunid[8];

	sdev = FUNC5(dev);
	h = FUNC1(sdev);
	FUNC3(&h->lock, flags);
	hdev = sdev->hostdata;
	if (!hdev) {
		FUNC4(&h->lock, flags);
		return -ENODEV;
	}
	FUNC0(lunid, hdev->scsi3addr, sizeof(lunid));
	FUNC4(&h->lock, flags);
	return FUNC2(buf, 20, "0x%8phN\n", lunid);
}