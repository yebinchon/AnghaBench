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
struct usb_skel {int ongoing_read; int errors; size_t bulk_in_filled; size_t bulk_in_copied; size_t bulk_in_buffer; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  bulk_in_wait; int /*<<< orphan*/  err_lock; scalar_t__ disconnected; } ;
struct file {int f_flags; struct usb_skel* private_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int EIO ; 
 int ENODEV ; 
 int EPIPE ; 
 int O_NONBLOCK ; 
 scalar_t__ FUNC0 (char*,size_t,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_skel*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct file *file, char *buffer, size_t count,
			 loff_t *ppos)
{
	struct usb_skel *dev;
	int rv;
	bool ongoing_io;

	dev = file->private_data;

	if (!count)
		return 0;

	/* no concurrent readers */
	rv = FUNC2(&dev->io_mutex);
	if (rv < 0)
		return rv;

	if (dev->disconnected) {		/* disconnect() was called */
		rv = -ENODEV;
		goto exit;
	}

	/* if IO is under way, we must not touch things */
retry:
	FUNC5(&dev->err_lock);
	ongoing_io = dev->ongoing_read;
	FUNC6(&dev->err_lock);

	if (ongoing_io) {
		/* nonblocking IO shall not wait */
		if (file->f_flags & O_NONBLOCK) {
			rv = -EAGAIN;
			goto exit;
		}
		/*
		 * IO may take forever
		 * hence wait in an interruptible state
		 */
		rv = FUNC7(dev->bulk_in_wait, (!dev->ongoing_read));
		if (rv < 0)
			goto exit;
	}

	/* errors must be reported */
	rv = dev->errors;
	if (rv < 0) {
		/* any error is reported once */
		dev->errors = 0;
		/* to preserve notifications about reset */
		rv = (rv == -EPIPE) ? rv : -EIO;
		/* report it */
		goto exit;
	}

	/*
	 * if the buffer is filled we may satisfy the read
	 * else we need to start IO
	 */

	if (dev->bulk_in_filled) {
		/* we had read data */
		size_t available = dev->bulk_in_filled - dev->bulk_in_copied;
		size_t chunk = FUNC1(available, count);

		if (!available) {
			/*
			 * all data has been used
			 * actual IO needs to be done
			 */
			rv = FUNC4(dev, count);
			if (rv < 0)
				goto exit;
			else
				goto retry;
		}
		/*
		 * data is available
		 * chunk tells us how much shall be copied
		 */

		if (FUNC0(buffer,
				 dev->bulk_in_buffer + dev->bulk_in_copied,
				 chunk))
			rv = -EFAULT;
		else
			rv = chunk;

		dev->bulk_in_copied += chunk;

		/*
		 * if we are asked for more than we have,
		 * we start IO but don't wait
		 */
		if (available < count)
			FUNC4(dev, count - chunk);
	} else {
		/* no data in the buffer */
		rv = FUNC4(dev, count);
		if (rv < 0)
			goto exit;
		else
			goto retry;
	}
exit:
	FUNC3(&dev->io_mutex);
	return rv;
}