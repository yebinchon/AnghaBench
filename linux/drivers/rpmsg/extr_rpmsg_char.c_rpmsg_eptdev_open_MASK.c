#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct rpmsg_eptdev {struct rpmsg_endpoint* ept; TYPE_1__ chinfo; struct device dev; struct rpmsg_device* rpdev; } ;
struct rpmsg_endpoint {int dummy; } ;
struct rpmsg_device {int dummy; } ;
struct inode {int /*<<< orphan*/  i_cdev; } ;
struct file {struct rpmsg_eptdev* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct rpmsg_eptdev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct rpmsg_endpoint* FUNC4 (struct rpmsg_device*,int /*<<< orphan*/ ,struct rpmsg_eptdev*,TYPE_1__) ; 
 int /*<<< orphan*/  rpmsg_ept_cb ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct rpmsg_eptdev *eptdev = FUNC0(inode->i_cdev);
	struct rpmsg_endpoint *ept;
	struct rpmsg_device *rpdev = eptdev->rpdev;
	struct device *dev = &eptdev->dev;

	FUNC2(dev);

	ept = FUNC4(rpdev, rpmsg_ept_cb, eptdev, eptdev->chinfo);
	if (!ept) {
		FUNC1(dev, "failed to open %s\n", eptdev->chinfo.name);
		FUNC3(dev);
		return -EINVAL;
	}

	eptdev->ept = ept;
	filp->private_data = eptdev;

	return 0;
}