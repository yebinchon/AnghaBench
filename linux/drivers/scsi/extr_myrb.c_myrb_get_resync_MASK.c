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
struct myrb_rbld_progress {scalar_t__ ldev_num; unsigned int ldev_size; unsigned int blocks_left; } ;
struct myrb_hba {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned short MYRB_STATUS_SUCCESS ; 
 unsigned short FUNC0 (struct myrb_hba*,struct myrb_rbld_progress*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  myrb_raid_template ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*,unsigned int) ; 
 struct myrb_hba* FUNC3 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct myrb_hba *cb = FUNC3(sdev->host);
	struct myrb_rbld_progress rbld_buf;
	unsigned int percent_complete = 0;
	unsigned short status;
	unsigned int ldev_size = 0, remaining = 0;

	if (sdev->channel < FUNC1(sdev->host))
		return;
	status = FUNC0(cb, &rbld_buf);
	if (status == MYRB_STATUS_SUCCESS) {
		if (rbld_buf.ldev_num == sdev->id) {
			ldev_size = rbld_buf.ldev_size;
			remaining = rbld_buf.blocks_left;
		}
	}
	if (remaining && ldev_size)
		percent_complete = (ldev_size - remaining) * 100 / ldev_size;
	FUNC2(myrb_raid_template, dev, percent_complete);
}