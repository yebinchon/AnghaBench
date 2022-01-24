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
struct scsi_target {unsigned int can_queue; int /*<<< orphan*/  target_busy; int /*<<< orphan*/  target_blocked; struct scsi_device* starget_sdev_user; scalar_t__ single_lun; } ;
struct scsi_device {int /*<<< orphan*/  starved_entry; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  starved_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct scsi_target* FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_target*,char*) ; 

__attribute__((used)) static inline int FUNC10(struct Scsi_Host *shost,
					   struct scsi_device *sdev)
{
	struct scsi_target *starget = FUNC6(sdev);
	unsigned int busy;

	if (starget->single_lun) {
		FUNC7(shost->host_lock);
		if (starget->starget_sdev_user &&
		    starget->starget_sdev_user != sdev) {
			FUNC8(shost->host_lock);
			return 0;
		}
		starget->starget_sdev_user = sdev;
		FUNC8(shost->host_lock);
	}

	if (starget->can_queue <= 0)
		return 1;

	busy = FUNC3(&starget->target_busy) - 1;
	if (FUNC4(&starget->target_blocked) > 0) {
		if (busy)
			goto starved;

		/*
		 * unblock after target_blocked iterates to zero
		 */
		if (FUNC2(&starget->target_blocked) > 0)
			goto out_dec;

		FUNC0(3, FUNC9(KERN_INFO, starget,
				 "unblocking target at zero depth\n"));
	}

	if (busy >= starget->can_queue)
		goto starved;

	return 1;

starved:
	FUNC7(shost->host_lock);
	FUNC5(&sdev->starved_entry, &shost->starved_list);
	FUNC8(shost->host_lock);
out_dec:
	if (starget->can_queue > 0)
		FUNC1(&starget->target_busy);
	return 0;
}