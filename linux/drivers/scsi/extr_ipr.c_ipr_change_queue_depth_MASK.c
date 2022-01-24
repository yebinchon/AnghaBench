#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int queue_depth; scalar_t__ hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {int dummy; } ;
struct ipr_ioa_cfg {TYPE_2__* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int IPR_MAX_CMD_PER_ATA_LUN ; 
 scalar_t__ FUNC0 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev, int qdepth)
{
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)sdev->host->hostdata;
	struct ipr_resource_entry *res;
	unsigned long lock_flags = 0;

	FUNC2(ioa_cfg->host->host_lock, lock_flags);
	res = (struct ipr_resource_entry *)sdev->hostdata;

	if (res && FUNC0(res) && qdepth > IPR_MAX_CMD_PER_ATA_LUN)
		qdepth = IPR_MAX_CMD_PER_ATA_LUN;
	FUNC3(ioa_cfg->host->host_lock, lock_flags);

	FUNC1(sdev, qdepth);
	return sdev->queue_depth;
}