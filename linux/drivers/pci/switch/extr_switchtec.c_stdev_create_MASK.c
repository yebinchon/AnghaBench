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
struct device {int /*<<< orphan*/  devt; int /*<<< orphan*/  release; int /*<<< orphan*/  groups; int /*<<< orphan*/ * parent; int /*<<< orphan*/  class; } ;
struct cdev {int /*<<< orphan*/  owner; } ;
struct switchtec_dev {int alive; struct device dev; struct cdev cdev; int /*<<< orphan*/  event_cnt; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  link_event_work; int /*<<< orphan*/  mrpc_timeout; int /*<<< orphan*/  mrpc_work; scalar_t__ mrpc_busy; int /*<<< orphan*/  mrpc_mutex; int /*<<< orphan*/  mrpc_queue; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct switchtec_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct switchtec_dev* FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link_event_work ; 
 int /*<<< orphan*/  mrpc_event_work ; 
 int /*<<< orphan*/  mrpc_timeout_work ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  stdev_release ; 
 int /*<<< orphan*/  switchtec_class ; 
 int /*<<< orphan*/  switchtec_device_groups ; 
 int /*<<< orphan*/  switchtec_devt ; 
 int /*<<< orphan*/  switchtec_fops ; 
 int /*<<< orphan*/  switchtec_minor_ida ; 

__attribute__((used)) static struct switchtec_dev *FUNC16(struct pci_dev *pdev)
{
	struct switchtec_dev *stdev;
	int minor;
	struct device *dev;
	struct cdev *cdev;
	int rc;

	stdev = FUNC13(sizeof(*stdev), GFP_KERNEL,
			     FUNC9(&pdev->dev));
	if (!stdev)
		return FUNC0(-ENOMEM);

	stdev->alive = true;
	stdev->pdev = pdev;
	FUNC2(&stdev->mrpc_queue);
	FUNC14(&stdev->mrpc_mutex);
	stdev->mrpc_busy = 0;
	FUNC3(&stdev->mrpc_work, mrpc_event_work);
	FUNC1(&stdev->mrpc_timeout, mrpc_timeout_work);
	FUNC3(&stdev->link_event_work, link_event_work);
	FUNC12(&stdev->event_wq);
	FUNC6(&stdev->event_cnt, 0);

	dev = &stdev->dev;
	FUNC10(dev);
	dev->class = switchtec_class;
	dev->parent = &pdev->dev;
	dev->groups = switchtec_device_groups;
	dev->release = stdev_release;

	minor = FUNC11(&switchtec_minor_ida, 0, 0,
			       GFP_KERNEL);
	if (minor < 0) {
		rc = minor;
		goto err_put;
	}

	dev->devt = FUNC5(FUNC4(switchtec_devt), minor);
	FUNC8(dev, "switchtec%d", minor);

	cdev = &stdev->cdev;
	FUNC7(cdev, &switchtec_fops);
	cdev->owner = THIS_MODULE;

	return stdev;

err_put:
	FUNC15(&stdev->dev);
	return FUNC0(rc);
}