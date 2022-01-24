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
struct scsi_device {unsigned int queue_depth; int /*<<< orphan*/  device_busy; int /*<<< orphan*/  device_blocked; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_device*,char*) ; 

__attribute__((used)) static inline int FUNC6(struct request_queue *q,
				  struct scsi_device *sdev)
{
	unsigned int busy;

	busy = FUNC3(&sdev->device_busy) - 1;
	if (FUNC4(&sdev->device_blocked)) {
		if (busy)
			goto out_dec;

		/*
		 * unblock after device_blocked iterates to zero
		 */
		if (FUNC2(&sdev->device_blocked) > 0)
			goto out_dec;
		FUNC0(3, FUNC5(KERN_INFO, sdev,
				   "unblocking device at zero depth\n"));
	}

	if (busy >= sdev->queue_depth)
		goto out_dec;

	return 1;
out_dec:
	FUNC1(&sdev->device_busy);
	return 0;
}