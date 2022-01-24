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
struct hpsa_scsi_dev_t {int /*<<< orphan*/  device_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  sn ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 struct ctlr_info* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 
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
	unsigned char sn[16];

	sdev = FUNC5(dev);
	h = FUNC1(sdev);
	FUNC3(&h->lock, flags);
	hdev = sdev->hostdata;
	if (!hdev) {
		FUNC4(&h->lock, flags);
		return -ENODEV;
	}
	FUNC0(sn, hdev->device_id, sizeof(sn));
	FUNC4(&h->lock, flags);
	return FUNC2(buf, 16 * 2 + 2,
			"%02X%02X%02X%02X%02X%02X%02X%02X"
			"%02X%02X%02X%02X%02X%02X%02X%02X\n",
			sn[0], sn[1], sn[2], sn[3],
			sn[4], sn[5], sn[6], sn[7],
			sn[8], sn[9], sn[10], sn[11],
			sn[12], sn[13], sn[14], sn[15]);
}