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
struct scsi_device {TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_wait; } ;

/* Variables and functions */
 int FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct scsi_device *sdev)
{
	int online;

	FUNC2(sdev->host->host_wait, !FUNC1(sdev->host));

	online = FUNC0(sdev);

	return online;
}