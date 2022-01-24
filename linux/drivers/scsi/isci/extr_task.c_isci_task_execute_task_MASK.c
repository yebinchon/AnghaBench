#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sas_task {int task_state_flags; int /*<<< orphan*/  task_state_lock; int /*<<< orphan*/  uldd_task; int /*<<< orphan*/  dev; } ;
struct isci_remote_device {int /*<<< orphan*/  flags; } ;
struct isci_host {int /*<<< orphan*/  scic_lock; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDEV_GONE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SAM_STAT_TASK_ABORTED ; 
 int /*<<< orphan*/  SAS_DEVICE_UNKNOWN ; 
 int /*<<< orphan*/  SAS_QUEUE_FULL ; 
 int SAS_TASK_AT_INITIATOR ; 
 int /*<<< orphan*/  SAS_TASK_COMPLETE ; 
 int SAS_TASK_STATE_ABORTED ; 
 int /*<<< orphan*/  SAS_TASK_UNDELIVERED ; 
 scalar_t__ SCI_CONTROLLER_INVALID_IO_TAG ; 
 int SCI_FAILURE ; 
 int SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct sas_task*,int /*<<< orphan*/ ,struct isci_remote_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isci_host* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct isci_host*) ; 
 int FUNC4 (struct isci_remote_device*,struct sas_task*) ; 
 struct isci_remote_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isci_remote_device*) ; 
 int FUNC7 (struct isci_host*,struct isci_remote_device*,struct sas_task*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct isci_host*,struct sas_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct isci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC13(struct sas_task *task, gfp_t gfp_flags)
{
	struct isci_host *ihost = FUNC2(task->dev);
	struct isci_remote_device *idev;
	unsigned long flags;
	enum sci_status status = SCI_FAILURE;
	bool io_ready;
	u16 tag;

	FUNC10(&ihost->scic_lock, flags);
	idev = FUNC5(task->dev);
	io_ready = FUNC4(idev, task);
	tag = FUNC3(ihost);
	FUNC11(&ihost->scic_lock, flags);

	FUNC1(&ihost->pdev->dev,
		"task: %p, dev: %p idev: %p:%#lx cmd = %p\n",
		task, task->dev, idev, idev ? idev->flags : 0,
		task->uldd_task);

	if (!idev) {
		FUNC8(ihost, task, SAS_TASK_UNDELIVERED,
				 SAS_DEVICE_UNKNOWN);
	} else if (!io_ready || tag == SCI_CONTROLLER_INVALID_IO_TAG) {
		/* Indicate QUEUE_FULL so that the scsi midlayer
		 * retries.
		  */
		FUNC8(ihost, task, SAS_TASK_COMPLETE,
				 SAS_QUEUE_FULL);
	} else {
		/* There is a device and it's ready for I/O. */
		FUNC10(&task->task_state_lock, flags);

		if (task->task_state_flags & SAS_TASK_STATE_ABORTED) {
			/* The I/O was aborted. */
			FUNC11(&task->task_state_lock, flags);

			FUNC8(ihost, task,
					 SAS_TASK_UNDELIVERED,
					 SAM_STAT_TASK_ABORTED);
		} else {
			task->task_state_flags |= SAS_TASK_AT_INITIATOR;
			FUNC11(&task->task_state_lock, flags);

			/* build and send the request. */
			status = FUNC7(ihost, idev, task, tag);

			if (status != SCI_SUCCESS) {
				FUNC10(&task->task_state_lock, flags);
				/* Did not really start this command. */
				task->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
				FUNC11(&task->task_state_lock, flags);

				if (FUNC12(IDEV_GONE, &idev->flags)) {
					/* Indicate that the device
					 * is gone.
					 */
					FUNC8(ihost, task,
						SAS_TASK_UNDELIVERED,
						SAS_DEVICE_UNKNOWN);
				} else {
					/* Indicate QUEUE_FULL so that
					 * the scsi midlayer retries.
					 * If the request failed for
					 * remote device reasons, it
					 * gets returned as
					 * SAS_TASK_UNDELIVERED next
					 * time through.
					 */
					FUNC8(ihost, task,
						SAS_TASK_COMPLETE,
						SAS_QUEUE_FULL);
				}
			}
		}
	}

	if (status != SCI_SUCCESS && tag != SCI_CONTROLLER_INVALID_IO_TAG) {
		FUNC10(&ihost->scic_lock, flags);
		/* command never hit the device, so just free
		 * the tci and skip the sequence increment
		 */
		FUNC9(ihost, FUNC0(tag));
		FUNC11(&ihost->scic_lock, flags);
	}

	FUNC6(idev);
	return 0;
}