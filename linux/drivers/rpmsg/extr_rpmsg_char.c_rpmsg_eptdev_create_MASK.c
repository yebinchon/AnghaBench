#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct rpmsg_channel_info {int dummy; } ;
struct device {int id; int /*<<< orphan*/  devt; int /*<<< orphan*/  release; int /*<<< orphan*/  groups; int /*<<< orphan*/ * parent; int /*<<< orphan*/  class; } ;
struct rpmsg_eptdev {TYPE_1__ cdev; int /*<<< orphan*/  readq; int /*<<< orphan*/  queue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  ept_lock; struct rpmsg_channel_info chinfo; struct rpmsg_device* rpdev; struct device dev; } ;
struct rpmsg_device {int dummy; } ;
struct rpmsg_ctrldev {int /*<<< orphan*/  dev; struct rpmsg_device* rpdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPMSG_DEV_MAX ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct rpmsg_eptdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct rpmsg_eptdev*) ; 
 struct rpmsg_eptdev* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  rpmsg_class ; 
 int /*<<< orphan*/  rpmsg_ept_ida ; 
 int /*<<< orphan*/  rpmsg_eptdev_fops ; 
 int /*<<< orphan*/  rpmsg_eptdev_groups ; 
 int /*<<< orphan*/  rpmsg_eptdev_release_device ; 
 int /*<<< orphan*/  rpmsg_major ; 
 int /*<<< orphan*/  rpmsg_minor_ida ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct rpmsg_ctrldev *ctrldev,
			       struct rpmsg_channel_info chinfo)
{
	struct rpmsg_device *rpdev = ctrldev->rpdev;
	struct rpmsg_eptdev *eptdev;
	struct device *dev;
	int ret;

	eptdev = FUNC14(sizeof(*eptdev), GFP_KERNEL);
	if (!eptdev)
		return -ENOMEM;

	dev = &eptdev->dev;
	eptdev->rpdev = rpdev;
	eptdev->chinfo = chinfo;

	FUNC15(&eptdev->ept_lock);
	FUNC18(&eptdev->queue_lock);
	FUNC17(&eptdev->queue);
	FUNC12(&eptdev->readq);

	FUNC9(dev);
	dev->class = rpmsg_class;
	dev->parent = &ctrldev->dev;
	dev->groups = rpmsg_eptdev_groups;
	FUNC6(dev, eptdev);

	FUNC4(&eptdev->cdev, &rpmsg_eptdev_fops);
	eptdev->cdev.owner = THIS_MODULE;

	ret = FUNC10(&rpmsg_minor_ida, 0, RPMSG_DEV_MAX, GFP_KERNEL);
	if (ret < 0)
		goto free_eptdev;
	dev->devt = FUNC2(FUNC0(rpmsg_major), ret);

	ret = FUNC10(&rpmsg_ept_ida, 0, 0, GFP_KERNEL);
	if (ret < 0)
		goto free_minor_ida;
	dev->id = ret;
	FUNC7(dev, "rpmsg%d", ret);

	ret = FUNC3(&eptdev->cdev, dev->devt, 1);
	if (ret)
		goto free_ept_ida;

	/* We can now rely on the release function for cleanup */
	dev->release = rpmsg_eptdev_release_device;

	ret = FUNC8(dev);
	if (ret) {
		FUNC5(dev, "device_add failed: %d\n", ret);
		FUNC16(dev);
	}

	return ret;

free_ept_ida:
	FUNC11(&rpmsg_ept_ida, dev->id);
free_minor_ida:
	FUNC11(&rpmsg_minor_ida, FUNC1(dev->devt));
free_eptdev:
	FUNC16(dev);
	FUNC13(eptdev);

	return ret;
}