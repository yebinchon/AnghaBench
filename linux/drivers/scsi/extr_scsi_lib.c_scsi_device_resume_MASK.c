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
struct scsi_device {scalar_t__ sdev_state; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  request_queue; int /*<<< orphan*/ * quiesced_by; } ;

/* Variables and functions */
 scalar_t__ SDEV_QUIESCE ; 
 int /*<<< orphan*/  SDEV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct scsi_device *sdev)
{
	/* check if the device state was mutated prior to resume, and if
	 * so assume the state is being managed elsewhere (for example
	 * device deleted during suspend)
	 */
	FUNC1(&sdev->state_mutex);
	if (sdev->quiesced_by) {
		sdev->quiesced_by = NULL;
		FUNC0(sdev->request_queue);
	}
	if (sdev->sdev_state == SDEV_QUIESCE)
		FUNC3(sdev, SDEV_RUNNING);
	FUNC2(&sdev->state_mutex);
}