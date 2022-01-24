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
struct scsi_device {int /*<<< orphan*/  state_mutex; struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev)
{
	struct request_queue *q = sdev->request_queue;
	int err;

	FUNC1(&sdev->state_mutex);
	err = FUNC3(sdev);
	if (err == 0)
		FUNC0(q);
	FUNC2(&sdev->state_mutex);

	return err;
}