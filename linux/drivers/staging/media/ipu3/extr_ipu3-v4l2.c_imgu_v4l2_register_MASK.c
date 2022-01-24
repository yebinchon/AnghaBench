#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ctrl_handler; int /*<<< orphan*/ * mdev; } ;
struct imgu_device {int streaming; int /*<<< orphan*/  media_dev; TYPE_1__ v4l2_dev; TYPE_4__* pci_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMGU_MAX_PIPE_NUM ; 
 int /*<<< orphan*/  IMGU_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct imgu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int FUNC9(struct imgu_device *imgu)
{
	int r;

	/* Initialize miscellaneous variables */
	imgu->streaming = false;

	/* Set up media device */
	FUNC4(&imgu->media_dev, imgu->pci_dev, IMGU_NAME);

	/* Set up v4l2 device */
	imgu->v4l2_dev.mdev = &imgu->media_dev;
	imgu->v4l2_dev.ctrl_handler = NULL;
	r = FUNC6(&imgu->pci_dev->dev, &imgu->v4l2_dev);
	if (r) {
		FUNC0(&imgu->pci_dev->dev,
			"failed to register V4L2 device (%d)\n", r);
		goto fail_v4l2_dev;
	}

	r = FUNC2(imgu);
	if (r) {
		FUNC0(&imgu->pci_dev->dev,
			"failed to register pipes (%d)\n", r);
		goto fail_v4l2_pipes;
	}

	r = FUNC7(&imgu->v4l2_dev);
	if (r) {
		FUNC0(&imgu->pci_dev->dev,
			"failed to register subdevs (%d)\n", r);
		goto fail_subdevs;
	}

	r = FUNC5(&imgu->media_dev);
	if (r) {
		FUNC0(&imgu->pci_dev->dev,
			"failed to register media device (%d)\n", r);
		goto fail_subdevs;
	}

	return 0;

fail_subdevs:
	FUNC1(imgu, IMGU_MAX_PIPE_NUM);
fail_v4l2_pipes:
	FUNC8(&imgu->v4l2_dev);
fail_v4l2_dev:
	FUNC3(&imgu->media_dev);

	return r;
}