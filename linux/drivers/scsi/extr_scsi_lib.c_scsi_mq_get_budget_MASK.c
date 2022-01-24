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
struct scsi_device {int /*<<< orphan*/  device_busy; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_QUEUE_DELAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_hw_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request_queue*,struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 

__attribute__((used)) static bool FUNC4(struct blk_mq_hw_ctx *hctx)
{
	struct request_queue *q = hctx->queue;
	struct scsi_device *sdev = q->queuedata;

	if (FUNC2(q, sdev))
		return true;

	if (FUNC0(&sdev->device_busy) == 0 && !FUNC3(sdev))
		FUNC1(hctx, SCSI_QUEUE_DELAY);
	return false;
}