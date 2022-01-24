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
struct uio_listener {struct uio_device* dev; } ;
struct uio_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  info_lock; TYPE_1__* info; } ;
struct inode {int dummy; } ;
struct file {struct uio_listener* private_data; } ;
struct TYPE_2__ {int (* release ) (TYPE_1__*,struct inode*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uio_listener*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,struct inode*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filep)
{
	int ret = 0;
	struct uio_listener *listener = filep->private_data;
	struct uio_device *idev = listener->dev;

	FUNC2(&idev->info_lock);
	if (idev->info && idev->info->release)
		ret = idev->info->release(idev->info, inode);
	FUNC3(&idev->info_lock);

	FUNC1(idev->owner);
	FUNC0(listener);
	FUNC4(&idev->dev);
	return ret;
}