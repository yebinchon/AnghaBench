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
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int PMCRAID_MAX_CMD_PER_LUN ; 
 int FUNC0 (struct scsi_device*,int) ; 

__attribute__((used)) static int FUNC1(struct scsi_device *scsi_dev, int depth)
{
	if (depth > PMCRAID_MAX_CMD_PER_LUN)
		depth = PMCRAID_MAX_CMD_PER_LUN;
	return FUNC0(scsi_dev, depth);
}