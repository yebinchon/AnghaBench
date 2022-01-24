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
struct usb_idmouse {scalar_t__ open; int /*<<< orphan*/  lock; int /*<<< orphan*/  present; } ;
struct inode {int dummy; } ;
struct file {struct usb_idmouse* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct usb_idmouse*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_disc_mutex ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct usb_idmouse *dev;

	dev = file->private_data;

	if (dev == NULL)
		return -ENODEV;

	FUNC1(&open_disc_mutex);
	/* lock our device */
	FUNC1(&dev->lock);

	/* are we really open? */
	if (dev->open <= 0) {
		FUNC2(&dev->lock);
		FUNC2(&open_disc_mutex);
		return -ENODEV;
	}

	--dev->open;

	if (!dev->present) {
		/* the device was unplugged before the file was released */
		FUNC2(&dev->lock);
		FUNC2(&open_disc_mutex);
		FUNC0(dev);
	} else {
		FUNC2(&dev->lock);
		FUNC2(&open_disc_mutex);
	}
	return 0;
}