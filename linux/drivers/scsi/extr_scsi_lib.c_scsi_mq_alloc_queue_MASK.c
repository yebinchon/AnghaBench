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
struct scsi_device {struct request_queue* request_queue; TYPE_1__* host; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct TYPE_2__ {int /*<<< orphan*/  tag_set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  QUEUE_FLAG_SCSI_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct request_queue*) ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct request_queue*) ; 

struct request_queue *FUNC4(struct scsi_device *sdev)
{
	sdev->request_queue = FUNC2(&sdev->host->tag_set);
	if (FUNC0(sdev->request_queue))
		return NULL;

	sdev->request_queue->queuedata = sdev;
	FUNC1(sdev->host, sdev->request_queue);
	FUNC3(QUEUE_FLAG_SCSI_PASSTHROUGH, sdev->request_queue);
	return sdev->request_queue;
}