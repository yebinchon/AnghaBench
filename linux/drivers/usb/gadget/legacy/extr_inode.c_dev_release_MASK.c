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
struct inode {int dummy; } ;
struct file {struct dev_data* private_data; } ;
struct dev_data {int gadget_registered; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_DEV_DISABLED ; 
 int /*<<< orphan*/  gadgetfs_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5 (struct inode *inode, struct file *fd)
{
	struct dev_data		*dev = fd->private_data;

	/* closing ep0 === shutdown all */

	if (dev->gadget_registered) {
		FUNC4 (&gadgetfs_driver);
		dev->gadget_registered = false;
	}

	/* at this point "good" hardware has disconnected the
	 * device from USB; the host won't see it any more.
	 * alternatively, all host requests will time out.
	 */

	FUNC0 (dev->buf);
	dev->buf = NULL;

	/* other endpoints were all decoupled from this device */
	FUNC2(&dev->lock);
	dev->state = STATE_DEV_DISABLED;
	FUNC3(&dev->lock);

	FUNC1 (dev);
	return 0;
}