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
struct scsi_target {scalar_t__ can_queue; int /*<<< orphan*/  target_busy; } ;
struct scsi_device {int /*<<< orphan*/  device_busy; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 struct scsi_target* FUNC2 (struct scsi_device*) ; 

void FUNC3(struct scsi_device *sdev)
{
	struct Scsi_Host *shost = sdev->host;
	struct scsi_target *starget = FUNC2(sdev);

	FUNC1(shost);

	if (starget->can_queue > 0)
		FUNC0(&starget->target_busy);

	FUNC0(&sdev->device_busy);
}