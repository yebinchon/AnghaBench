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
struct device {int /*<<< orphan*/  kobj; } ;
struct scsi_device {scalar_t__ sdev_state; TYPE_2__* host; int /*<<< orphan*/  requeue_work; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  state_mutex; struct device sdev_dev; struct device sdev_gendev; scalar_t__ is_visible; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* slave_destroy ) (struct scsi_device*) ;scalar_t__ sdev_groups; } ;

/* Variables and functions */
 scalar_t__ SDEV_CANCEL ; 
 scalar_t__ SDEV_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (struct scsi_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 

void FUNC16(struct scsi_device *sdev)
{
	struct device *dev = &sdev->sdev_gendev;
	int res;

	/*
	 * This cleanup path is not reentrant and while it is impossible
	 * to get a new reference with scsi_device_get() someone can still
	 * hold a previously acquired one.
	 */
	if (sdev->sdev_state == SDEV_DEL)
		return;

	if (sdev->is_visible) {
		/*
		 * If scsi_internal_target_block() is running concurrently,
		 * wait until it has finished before changing the device state.
		 */
		FUNC5(&sdev->state_mutex);
		/*
		 * If blocked, we go straight to DEL and restart the queue so
		 * any commands issued during driver shutdown (like sync
		 * cache) are errored immediately.
		 */
		res = FUNC8(sdev, SDEV_CANCEL);
		if (res != 0) {
			res = FUNC8(sdev, SDEV_DEL);
			if (res == 0)
				FUNC9(sdev);
		}
		FUNC6(&sdev->state_mutex);

		if (res != 0)
			return;

		if (sdev->host->hostt->sdev_groups)
			FUNC13(&sdev->sdev_gendev.kobj,
					sdev->host->hostt->sdev_groups);

		FUNC1(sdev->request_queue);
		FUNC4(&sdev->sdev_dev);
		FUNC15(dev);
		FUNC3(dev);
	} else
		FUNC7(&sdev->sdev_dev);

	/*
	 * Stop accepting new requests and wait until all queuecommand() and
	 * scsi_run_queue() invocations have finished before tearing down the
	 * device.
	 */
	FUNC5(&sdev->state_mutex);
	FUNC8(sdev, SDEV_DEL);
	FUNC6(&sdev->state_mutex);

	FUNC0(sdev->request_queue);
	FUNC2(&sdev->requeue_work);

	if (sdev->host->hostt->slave_destroy)
		sdev->host->hostt->slave_destroy(sdev);
	FUNC14(dev);

	/*
	 * Paired with the kref_get() in scsi_sysfs_initialize().  We have
	 * remoed sysfs visibility from the device, so make the target
	 * invisible if this was the last device underneath it.
	 */
	FUNC11(FUNC10(sdev));

	FUNC7(dev);
}