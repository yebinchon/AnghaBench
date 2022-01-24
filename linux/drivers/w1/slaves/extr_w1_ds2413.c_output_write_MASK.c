#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
struct w1_slave {int /*<<< orphan*/  dev; TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 char W1_F3A_FUNC_PIO_ACCESS_WRITE ; 
 unsigned int W1_F3A_RETRIES ; 
 scalar_t__ W1_F3A_SUCCESS_CONFIRM_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct w1_slave* FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC9(struct file *filp, struct kobject *kobj,
			    struct bin_attribute *bin_attr, char *buf,
			    loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC2(kobj);
	u8 w1_buf[3];
	unsigned int retries = W1_F3A_RETRIES;
	ssize_t bytes_written = -EIO;

	if (count != 1 || off != 0)
		return -EFAULT;

	FUNC0(&sl->dev, "locking mutex for write_output");
	FUNC3(&sl->master->bus_mutex);
	FUNC0(&sl->dev, "mutex locked");

	if (FUNC7(sl))
		goto out;

	/* according to the DS2413 datasheet the most significant 6 bits
	   should be set to "1"s, so do it now */
	*buf = *buf | 0xFC;

	while (retries--) {
		w1_buf[0] = W1_F3A_FUNC_PIO_ACCESS_WRITE;
		w1_buf[1] = *buf;
		w1_buf[2] = ~(*buf);
		FUNC8(sl->master, w1_buf, 3);

		if (FUNC5(sl->master) == W1_F3A_SUCCESS_CONFIRM_BYTE) {
			bytes_written = 1;
			goto out;
		}
		if (FUNC6(sl->master))
			goto out; /* unrecoverable error */

		FUNC1(&sl->dev, "PIO_ACCESS_WRITE error, retries left: %d\n", retries);
	}

out:
	FUNC4(&sl->master->bus_mutex);
	FUNC0(&sl->dev, "%s, mutex unlocked, retries: %d\n",
		(bytes_written > 0) ? "succeeded" : "error", retries);
	return bytes_written;
}