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
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct miscdevice {TYPE_2__ notifier; int /*<<< orphan*/  wait_event; int /*<<< orphan*/  events; struct cros_ec_dev* ec_dev; int /*<<< orphan*/  parent; } ;
struct inode {int dummy; } ;
struct file {struct miscdevice* private_data; } ;
struct cros_ec_dev {int /*<<< orphan*/  dev; TYPE_1__* ec_dev; } ;
struct chardev_priv {TYPE_2__ notifier; int /*<<< orphan*/  wait_event; int /*<<< orphan*/  events; struct cros_ec_dev* ec_dev; int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_notifier; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  cros_ec_chardev_mkbp_event ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct cros_ec_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct miscdevice*) ; 
 struct miscdevice* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filp)
{
	struct miscdevice *mdev = filp->private_data;
	struct cros_ec_dev *ec_dev = FUNC3(mdev->parent);
	struct chardev_priv *priv;
	int ret;

	priv = FUNC6(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->ec_dev = ec_dev;
	filp->private_data = priv;
	FUNC0(&priv->events);
	FUNC4(&priv->wait_event);
	FUNC7(inode, filp);

	priv->notifier.notifier_call = cros_ec_chardev_mkbp_event;
	ret = FUNC1(&ec_dev->ec_dev->event_notifier,
					       &priv->notifier);
	if (ret) {
		FUNC2(ec_dev->dev, "failed to register event notifier\n");
		FUNC5(priv);
	}

	return ret;
}