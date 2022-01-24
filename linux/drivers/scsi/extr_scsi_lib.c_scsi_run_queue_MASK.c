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
struct scsi_device {TYPE_2__* host; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct TYPE_4__ {int /*<<< orphan*/  starved_list; } ;
struct TYPE_3__ {scalar_t__ single_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (struct scsi_device*) ; 

__attribute__((used)) static void FUNC5(struct request_queue *q)
{
	struct scsi_device *sdev = q->queuedata;

	if (FUNC4(sdev)->single_lun)
		FUNC2(sdev);
	if (!FUNC1(&sdev->host->starved_list))
		FUNC3(sdev->host);

	FUNC0(q, false);
}