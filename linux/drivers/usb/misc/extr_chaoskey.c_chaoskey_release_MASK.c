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
struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct chaoskey* private_data; } ;
struct chaoskey {scalar_t__ open; int /*<<< orphan*/  lock; int /*<<< orphan*/  present; struct usb_interface* interface; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct chaoskey*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct chaoskey *dev = file->private_data;
	struct usb_interface *interface;

	if (dev == NULL)
		return -ENODEV;

	interface = dev->interface;

	FUNC3(interface, "release");

	FUNC1(&dev->lock);

	FUNC3(interface, "open count at release is %d", dev->open);

	if (dev->open <= 0) {
		FUNC3(interface, "invalid open count (%d)", dev->open);
		FUNC2(&dev->lock);
		return -ENODEV;
	}

	--dev->open;

	if (!dev->present) {
		if (dev->open == 0) {
			FUNC2(&dev->lock);
			FUNC0(dev);
		} else
			FUNC2(&dev->lock);
	} else
		FUNC2(&dev->lock);

	FUNC3(interface, "release success");
	return 0;
}