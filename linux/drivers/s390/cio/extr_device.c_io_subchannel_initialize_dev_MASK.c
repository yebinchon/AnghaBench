#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ssid; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {TYPE_1__ pmcw; } ;
struct subchannel {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_3__ schid; TYPE_2__ schib; } ;
struct TYPE_13__ {int initialized; } ;
struct TYPE_12__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct ccw_device_private {TYPE_5__ flags; TYPE_4__ dev_id; int /*<<< orphan*/  onoff; int /*<<< orphan*/  timer; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  cmb_list; int /*<<< orphan*/  todo_work; int /*<<< orphan*/  state; int /*<<< orphan*/  int_class; struct ccw_device* cdev; } ;
struct TYPE_14__ {int /*<<< orphan*/  groups; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct ccw_device {TYPE_6__ dev; struct ccw_device_private* private; int /*<<< orphan*/  ccwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_NOT_OPER ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQIO_CIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccw_device_release ; 
 int /*<<< orphan*/  ccw_device_timeout ; 
 int /*<<< orphan*/  ccw_device_todo ; 
 int /*<<< orphan*/  ccwdev_attr_groups ; 
 int FUNC3 (TYPE_6__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (struct subchannel*,struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct subchannel *sch,
					struct ccw_device *cdev)
{
	struct ccw_device_private *priv = cdev->private;
	int ret;

	priv->cdev = cdev;
	priv->int_class = IRQIO_CIO;
	priv->state = DEV_STATE_NOT_OPER;
	priv->dev_id.devno = sch->schib.pmcw.dev;
	priv->dev_id.ssid = sch->schid.ssid;

	FUNC1(&priv->todo_work, ccw_device_todo);
	FUNC0(&priv->cmb_list);
	FUNC6(&priv->wait_q);
	FUNC11(&priv->timer, ccw_device_timeout, 0);

	FUNC2(&priv->onoff, 0);
	cdev->ccwlock = sch->lock;
	cdev->dev.parent = &sch->dev;
	cdev->dev.release = ccw_device_release;
	cdev->dev.groups = ccwdev_attr_groups;
	/* Do first half of device_register. */
	FUNC4(&cdev->dev);
	ret = FUNC3(&cdev->dev, "0.%x.%04x", cdev->private->dev_id.ssid,
			   cdev->private->dev_id.devno);
	if (ret)
		goto out_put;
	if (!FUNC5(&sch->dev)) {
		ret = -ENODEV;
		goto out_put;
	}
	priv->flags.initialized = 1;
	FUNC9(sch->lock);
	FUNC8(sch, cdev);
	FUNC10(sch->lock);
	return 0;

out_put:
	/* Release reference from device_initialize(). */
	FUNC7(&cdev->dev);
	return ret;
}