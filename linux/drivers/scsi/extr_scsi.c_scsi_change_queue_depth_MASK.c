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
struct scsi_device {int queue_depth; scalar_t__ request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(struct scsi_device *sdev, int depth)
{
	if (depth > 0) {
		sdev->queue_depth = depth;
		FUNC1();
	}

	if (sdev->request_queue)
		FUNC0(sdev->request_queue, depth);

	return sdev->queue_depth;
}