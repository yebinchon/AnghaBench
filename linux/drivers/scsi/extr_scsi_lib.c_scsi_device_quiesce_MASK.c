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
struct scsi_device {scalar_t__ quiesced_by; int /*<<< orphan*/  state_mutex; struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDEV_QUIESCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(struct scsi_device *sdev)
{
	struct request_queue *q = sdev->request_queue;
	int err;

	/*
	 * It is allowed to call scsi_device_quiesce() multiple times from
	 * the same context but concurrent scsi_device_quiesce() calls are
	 * not allowed.
	 */
	FUNC0(sdev->quiesced_by && sdev->quiesced_by != current);

	if (sdev->quiesced_by == current)
		return 0;

	FUNC4(q);

	FUNC2(q);
	/*
	 * Ensure that the effect of blk_set_pm_only() will be visible
	 * for percpu_ref_tryget() callers that occur after the queue
	 * unfreeze even if the queue was already frozen before this function
	 * was called. See also https://lwn.net/Articles/573497/.
	 */
	FUNC8();
	FUNC3(q);

	FUNC5(&sdev->state_mutex);
	err = FUNC7(sdev, SDEV_QUIESCE);
	if (err == 0)
		sdev->quiesced_by = current;
	else
		FUNC1(q);
	FUNC6(&sdev->state_mutex);

	return err;
}