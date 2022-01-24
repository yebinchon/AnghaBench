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
struct iowarrior {scalar_t__ opened; int /*<<< orphan*/  mutex; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  int_in_urb; scalar_t__ present; int /*<<< orphan*/  minor; TYPE_1__* interface; } ;
struct inode {int dummy; } ;
struct file {struct iowarrior* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iowarrior*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct iowarrior *dev;
	int retval = 0;

	dev = file->private_data;
	if (!dev)
		return -ENODEV;

	FUNC0(&dev->interface->dev, "minor %d\n", dev->minor);

	/* lock our device */
	FUNC2(&dev->mutex);

	if (dev->opened <= 0) {
		retval = -ENODEV;	/* close called more than once */
		FUNC3(&dev->mutex);
	} else {
		dev->opened = 0;	/* we're closing now */
		retval = 0;
		if (dev->present) {
			/*
			   The device is still connected so we only shutdown
			   pending read-/write-ops.
			 */
			FUNC4(dev->int_in_urb);
			FUNC5(&dev->read_wait);
			FUNC5(&dev->write_wait);
			FUNC3(&dev->mutex);
		} else {
			/* The device was unplugged, cleanup resources */
			FUNC3(&dev->mutex);
			FUNC1(dev);
		}
	}
	return retval;
}