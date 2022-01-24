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
struct scsi_device {int /*<<< orphan*/  list_lock; struct Scsi_Host* host; } ;
struct scsi_cmnd {int /*<<< orphan*/  list; struct scsi_device* device; } ;
struct Scsi_Host {scalar_t__ use_cmd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct scsi_cmnd *cmd)
{
	struct scsi_device *sdev = cmd->device;
	struct Scsi_Host *shost = sdev->host;
	unsigned long flags;

	if (shost->use_cmd_list) {
		FUNC3(&sdev->list_lock, flags);
		FUNC0(FUNC2(&cmd->list));
		FUNC1(&cmd->list);
		FUNC4(&sdev->list_lock, flags);
	}
}