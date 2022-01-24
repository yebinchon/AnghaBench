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
struct soc_camera_host {TYPE_2__* ops; int /*<<< orphan*/  host_lock; } ;
struct soc_camera_device {int /*<<< orphan*/  pdev; TYPE_1__* vdev; int /*<<< orphan*/  use_count; struct file* streamer; int /*<<< orphan*/  vb2_vidq; int /*<<< orphan*/  parent; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; scalar_t__ init_videobuf2; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct soc_camera_device*) ; 
 struct soc_camera_host* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct soc_camera_device *icd = file->private_data;
	struct soc_camera_host *ici = FUNC8(icd->parent);

	FUNC3(&ici->host_lock);
	if (icd->streamer == file) {
		if (ici->ops->init_videobuf2)
			FUNC9(&icd->vb2_vidq);
		icd->streamer = NULL;
	}
	icd->use_count--;
	if (!icd->use_count) {
		FUNC6(&icd->vdev->dev);
		FUNC5(&icd->vdev->dev);

		FUNC0(icd);

		FUNC7(icd);
	}

	FUNC4(&ici->host_lock);

	FUNC2(ici->ops->owner);

	FUNC1(icd->pdev, "camera device close\n");

	return 0;
}