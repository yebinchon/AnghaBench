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
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct device {int id; int /*<<< orphan*/  devt; int /*<<< orphan*/  release; int /*<<< orphan*/  class; int /*<<< orphan*/ * parent; } ;
struct rpmsg_ctrldev {TYPE_1__ cdev; struct device dev; struct rpmsg_device* rpdev; } ;

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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct rpmsg_ctrldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rpmsg_ctrldev*) ; 
 struct rpmsg_ctrldev* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  rpmsg_class ; 
 int /*<<< orphan*/  rpmsg_ctrl_ida ; 
 int /*<<< orphan*/  rpmsg_ctrldev_fops ; 
 int /*<<< orphan*/  rpmsg_ctrldev_release_device ; 
 int /*<<< orphan*/  rpmsg_major ; 
 int /*<<< orphan*/  rpmsg_minor_ida ; 

__attribute__((used)) static int FUNC15(struct rpmsg_device *rpdev)
{
	struct rpmsg_ctrldev *ctrldev;
	struct device *dev;
	int ret;

	ctrldev = FUNC13(sizeof(*ctrldev), GFP_KERNEL);
	if (!ctrldev)
		return -ENOMEM;

	ctrldev->rpdev = rpdev;

	dev = &ctrldev->dev;
	FUNC9(dev);
	dev->parent = &rpdev->dev;
	dev->class = rpmsg_class;

	FUNC4(&ctrldev->cdev, &rpmsg_ctrldev_fops);
	ctrldev->cdev.owner = THIS_MODULE;

	ret = FUNC10(&rpmsg_minor_ida, 0, RPMSG_DEV_MAX, GFP_KERNEL);
	if (ret < 0)
		goto free_ctrldev;
	dev->devt = FUNC2(FUNC0(rpmsg_major), ret);

	ret = FUNC10(&rpmsg_ctrl_ida, 0, 0, GFP_KERNEL);
	if (ret < 0)
		goto free_minor_ida;
	dev->id = ret;
	FUNC7(&ctrldev->dev, "rpmsg_ctrl%d", ret);

	ret = FUNC3(&ctrldev->cdev, dev->devt, 1);
	if (ret)
		goto free_ctrl_ida;

	/* We can now rely on the release function for cleanup */
	dev->release = rpmsg_ctrldev_release_device;

	ret = FUNC8(dev);
	if (ret) {
		FUNC5(&rpdev->dev, "device_add failed: %d\n", ret);
		FUNC14(dev);
	}

	FUNC6(&rpdev->dev, ctrldev);

	return ret;

free_ctrl_ida:
	FUNC11(&rpmsg_ctrl_ida, dev->id);
free_minor_ida:
	FUNC11(&rpmsg_minor_ida, FUNC1(dev->devt));
free_ctrldev:
	FUNC14(dev);
	FUNC12(ctrldev);

	return ret;
}