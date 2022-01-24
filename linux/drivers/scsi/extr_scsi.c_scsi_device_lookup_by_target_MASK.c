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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {TYPE_1__ dev; } ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct scsi_device* FUNC0 (struct scsi_target*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

struct scsi_device *FUNC5(struct scsi_target *starget,
						 u64 lun)
{
	struct scsi_device *sdev;
	struct Scsi_Host *shost = FUNC1(starget->dev.parent);
	unsigned long flags;

	FUNC3(shost->host_lock, flags);
	sdev = FUNC0(starget, lun);
	if (sdev && FUNC2(sdev))
		sdev = NULL;
	FUNC4(shost->host_lock, flags);

	return sdev;
}