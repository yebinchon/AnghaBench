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
struct scsi_device {int /*<<< orphan*/  starved_entry; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {unsigned int can_queue; int /*<<< orphan*/  host_lock; int /*<<< orphan*/  starved_list; scalar_t__ host_self_blocked; int /*<<< orphan*/  host_blocked; int /*<<< orphan*/  host_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 scalar_t__ FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC12(struct request_queue *q,
				   struct Scsi_Host *shost,
				   struct scsi_device *sdev)
{
	unsigned int busy;

	if (FUNC8(shost))
		return 0;

	busy = FUNC2(&shost->host_busy) - 1;
	if (FUNC3(&shost->host_blocked) > 0) {
		if (busy)
			goto starved;

		/*
		 * unblock after host_blocked iterates to zero
		 */
		if (FUNC1(&shost->host_blocked) > 0)
			goto out_dec;

		FUNC0(3,
			FUNC9(KERN_INFO, shost,
				     "unblocking host at zero depth\n"));
	}

	if (shost->can_queue > 0 && busy >= shost->can_queue)
		goto starved;
	if (shost->host_self_blocked)
		goto starved;

	/* We're OK to process the command, so we can't be starved */
	if (!FUNC6(&sdev->starved_entry)) {
		FUNC10(shost->host_lock);
		if (!FUNC6(&sdev->starved_entry))
			FUNC5(&sdev->starved_entry);
		FUNC11(shost->host_lock);
	}

	return 1;

starved:
	FUNC10(shost->host_lock);
	if (FUNC6(&sdev->starved_entry))
		FUNC4(&sdev->starved_entry, &shost->starved_list);
	FUNC11(shost->host_lock);
out_dec:
	FUNC7(shost);
	return 0;
}