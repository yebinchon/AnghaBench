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
struct scsi_target {int /*<<< orphan*/  dev; } ;
struct scsi_device {scalar_t__ borken; } ;
struct Scsi_Host {int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  this_id; int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC3 (struct scsi_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct scsi_target* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_target*) ; 

struct scsi_device *FUNC7(struct Scsi_Host *shost)
{
	struct scsi_device *sdev = NULL;
	struct scsi_target *starget;

	FUNC0(&shost->scan_mutex);
	if (!FUNC5(shost))
		goto out;
	starget = FUNC4(&shost->shost_gendev, 0, shost->this_id);
	if (!starget)
		goto out;

	sdev = FUNC3(starget, 0, NULL);
	if (sdev)
		sdev->borken = 0;
	else
		FUNC6(starget);
	FUNC2(&starget->dev);
 out:
	FUNC1(&shost->scan_mutex);
	return sdev;
}