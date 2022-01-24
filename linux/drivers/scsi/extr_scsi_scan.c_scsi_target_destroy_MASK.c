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
struct device {int /*<<< orphan*/  parent; } ;
struct scsi_target {scalar_t__ state; int /*<<< orphan*/  siblings; struct device dev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; TYPE_1__* hostt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* target_destroy ) (struct scsi_target*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ STARGET_DEL ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static void FUNC8(struct scsi_target *starget)
{
	struct device *dev = &starget->dev;
	struct Scsi_Host *shost = FUNC1(dev->parent);
	unsigned long flags;

	FUNC0(starget->state == STARGET_DEL);
	starget->state = STARGET_DEL;
	FUNC7(dev);
	FUNC4(shost->host_lock, flags);
	if (shost->hostt->target_destroy)
		shost->hostt->target_destroy(starget);
	FUNC2(&starget->siblings);
	FUNC5(shost->host_lock, flags);
	FUNC3(dev);
}