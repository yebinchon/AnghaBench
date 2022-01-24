#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct w1_slave {int /*<<< orphan*/  dev; TYPE_2__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct bin_attribute {TYPE_1__ attr; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  W1_F3A_FUNC_PIO_ACCESS_READ ; 
 int W1_F3A_INVALID_PIO_STATE ; 
 unsigned int W1_F3A_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct w1_slave* FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct file *filp, struct kobject *kobj,
			  struct bin_attribute *bin_attr, char *buf, loff_t off,
			  size_t count)
{
	struct w1_slave *sl = FUNC2(kobj);
	unsigned int retries = W1_F3A_RETRIES;
	ssize_t bytes_read = -EIO;
	u8 state;

	FUNC0(&sl->dev,
		"Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p",
		bin_attr->attr.name, kobj, (unsigned int)off, count, buf);

	if (off != 0)
		return 0;
	if (!buf)
		return -EINVAL;

	FUNC3(&sl->master->bus_mutex);
	FUNC0(&sl->dev, "mutex locked");

next:
	if (FUNC7(sl))
		goto out;

	while (retries--) {
		FUNC8(sl->master, W1_F3A_FUNC_PIO_ACCESS_READ);

		state = FUNC5(sl->master);
		if ((state & 0x0F) == ((~state >> 4) & 0x0F)) {
			/* complement is correct */
			*buf = state;
			bytes_read = 1;
			goto out;
		} else if (state == W1_F3A_INVALID_PIO_STATE) {
			/* slave didn't respond, try to select it again */
			FUNC1(&sl->dev, "slave device did not respond to PIO_ACCESS_READ, " \
					    "reselecting, retries left: %d\n", retries);
			goto next;
		}

		if (FUNC6(sl->master))
			goto out; /* unrecoverable error */

		FUNC1(&sl->dev, "PIO_ACCESS_READ error, retries left: %d\n", retries);
	}

out:
	FUNC4(&sl->master->bus_mutex);
	FUNC0(&sl->dev, "%s, mutex unlocked, retries: %d\n",
		(bytes_read > 0) ? "succeeded" : "error", retries);
	return bytes_read;
}