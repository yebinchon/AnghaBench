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
struct usb_skel {int errors; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  err_lock; } ;
struct file {struct usb_skel* private_data; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_skel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct file *file, fl_owner_t id)
{
	struct usb_skel *dev;
	int res;

	dev = file->private_data;
	if (dev == NULL)
		return -ENODEV;

	/* wait for io to stop */
	FUNC0(&dev->io_mutex);
	FUNC2(dev);

	/* read out errors, leave subsequent opens a clean slate */
	FUNC3(&dev->err_lock);
	res = dev->errors ? (dev->errors == -EPIPE ? -EPIPE : -EIO) : 0;
	dev->errors = 0;
	FUNC4(&dev->err_lock);

	FUNC1(&dev->io_mutex);

	return res;
}