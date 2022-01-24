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
struct ld_usb {int open_count; int /*<<< orphan*/  mutex; scalar_t__ interrupt_out_busy; int /*<<< orphan*/  write_wait; scalar_t__ disconnected; } ;
struct inode {int dummy; } ;
struct file {struct ld_usb* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ld_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ld_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct ld_usb *dev;
	int retval = 0;

	dev = file->private_data;

	if (dev == NULL) {
		retval = -ENODEV;
		goto exit;
	}

	FUNC2(&dev->mutex);

	if (dev->open_count != 1) {
		retval = -ENODEV;
		goto unlock_exit;
	}
	if (dev->disconnected) {
		/* the device was unplugged before the file was released */
		FUNC3(&dev->mutex);
		/* unlock here as ld_usb_delete frees dev */
		FUNC1(dev);
		goto exit;
	}

	/* wait until write transfer is finished */
	if (dev->interrupt_out_busy)
		FUNC4(dev->write_wait, !dev->interrupt_out_busy, 2 * HZ);
	FUNC0(dev);
	dev->open_count = 0;

unlock_exit:
	FUNC3(&dev->mutex);

exit:
	return retval;
}