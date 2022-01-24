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
struct visorhba_devdata {int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  debugfs_info; int /*<<< orphan*/  idr; int /*<<< orphan*/  thread; struct Scsi_Host* scsihost; } ;
struct visor_device {int /*<<< orphan*/  device; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct visorhba_devdata* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct visor_device *dev)
{
	struct visorhba_devdata *devdata = FUNC2(&dev->device);
	struct Scsi_Host *scsihost = NULL;

	if (!devdata)
		return;

	scsihost = devdata->scsihost;
	FUNC7(devdata->thread);
	FUNC6(scsihost);
	FUNC5(scsihost);

	FUNC4(&devdata->idr);

	FUNC3(&dev->device, NULL);
	FUNC0(devdata->debugfs_info);
	FUNC1(devdata->debugfs_dir);
}