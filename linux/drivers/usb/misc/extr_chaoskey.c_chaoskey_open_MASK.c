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
struct chaoskey {int /*<<< orphan*/  lock; int /*<<< orphan*/  open; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  chaoskey_driver ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,char*) ; 
 struct usb_interface* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct chaoskey* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct chaoskey *dev;
	struct usb_interface *interface;

	/* get the interface from minor number and driver information */
	interface = FUNC4(&chaoskey_driver, FUNC0(inode));
	if (!interface)
		return -ENODEV;

	FUNC3(interface, "open");

	dev = FUNC5(interface);
	if (!dev) {
		FUNC3(interface, "open (dev)");
		return -ENODEV;
	}

	file->private_data = dev;
	FUNC1(&dev->lock);
	++dev->open;
	FUNC2(&dev->lock);

	FUNC3(interface, "open success");
	return 0;
}