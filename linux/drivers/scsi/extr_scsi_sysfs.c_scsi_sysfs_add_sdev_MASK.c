#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct scsi_target {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  kobj; } ;
struct scsi_device {int is_visible; TYPE_2__* host; TYPE_3__ sdev_gendev; TYPE_3__ sdev_dev; struct scsi_target* sdev_target; struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;
struct TYPE_13__ {TYPE_1__* hostt; } ;
struct TYPE_12__ {scalar_t__ sdev_groups; scalar_t__* sdev_attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC0 (struct request_queue*,TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_device*) ; 
 int FUNC13 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct scsi_device*,char*,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct scsi_device *sdev)
{
	int error, i;
	struct request_queue *rq = sdev->request_queue;
	struct scsi_target *starget = sdev->sdev_target;

	error = FUNC13(starget);
	if (error)
		return error;

	FUNC17(&starget->dev);

	FUNC4(&sdev->sdev_gendev);
	FUNC9(starget);
	FUNC7(&sdev->sdev_gendev);
	FUNC6(&sdev->sdev_gendev);
	FUNC5(&sdev->sdev_gendev);
	FUNC11(starget);

	FUNC8(sdev);

	FUNC12(sdev);

	error = FUNC1(&sdev->sdev_gendev);
	if (error) {
		FUNC14(KERN_INFO, sdev,
				"failed to add device: %d\n", error);
		return error;
	}

	FUNC4(&sdev->sdev_dev);
	error = FUNC1(&sdev->sdev_dev);
	if (error) {
		FUNC14(KERN_INFO, sdev,
				"failed to add class device: %d\n", error);
		FUNC3(&sdev->sdev_gendev);
		return error;
	}
	FUNC16(&sdev->sdev_gendev);
	sdev->is_visible = 1;

	error = FUNC0(rq, &sdev->sdev_gendev);
	if (error)
		/* we're treating error on bsg register as non-fatal,
		 * so pretend nothing went wrong */
		FUNC14(KERN_INFO, sdev,
			    "Failed to register bsg queue, errno=%d\n", error);

	/* add additional host specific attributes */
	if (sdev->host->hostt->sdev_attrs) {
		for (i = 0; sdev->host->hostt->sdev_attrs[i]; i++) {
			error = FUNC2(&sdev->sdev_gendev,
					sdev->host->hostt->sdev_attrs[i]);
			if (error)
				return error;
		}
	}

	if (sdev->host->hostt->sdev_groups) {
		error = FUNC15(&sdev->sdev_gendev.kobj,
				sdev->host->hostt->sdev_groups);
		if (error)
			return error;
	}

	FUNC10(sdev);
	return error;
}