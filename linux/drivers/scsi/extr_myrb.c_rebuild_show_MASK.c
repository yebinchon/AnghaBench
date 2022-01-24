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
struct scsi_device {scalar_t__ channel; scalar_t__ id; int /*<<< orphan*/  host; } ;
struct myrb_rbld_progress {scalar_t__ ldev_num; int ldev_size; int blocks_left; } ;
struct myrb_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned char MYRB_STATUS_SUCCESS ; 
 unsigned char FUNC0 (struct myrb_hba*,struct myrb_rbld_progress*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct myrb_hba* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct myrb_hba *cb = FUNC2(sdev->host);
	struct myrb_rbld_progress rbld_buf;
	unsigned char status;

	if (sdev->channel < FUNC1(sdev->host))
		return FUNC3(buf, 32, "physical device - not rebuilding\n");

	status = FUNC0(cb, &rbld_buf);

	if (rbld_buf.ldev_num != sdev->id ||
	    status != MYRB_STATUS_SUCCESS)
		return FUNC3(buf, 32, "not rebuilding\n");

	return FUNC3(buf, 32, "rebuilding block %u of %u\n",
			rbld_buf.ldev_size - rbld_buf.blocks_left,
			rbld_buf.ldev_size);
}