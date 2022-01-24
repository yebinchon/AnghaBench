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
struct w1_slave {TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 char W1_F29_FUNC_READ_PIO_REGS ; 
 char W1_F29_FUNC_WRITE_COND_SEARCH_REG ; 
 char W1_F29_REG_CONTROL_AND_STATUS ; 
 unsigned int W1_F29_RETRIES ; 
 struct w1_slave* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct file *filp, struct kobject *kobj,
				    struct bin_attribute *bin_attr, char *buf,
				    loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC0(kobj);
	u8 w1_buf[4];
	unsigned int retries = W1_F29_RETRIES;

	if (count != 1 || off != 0)
		return -EFAULT;

	FUNC1(&sl->master->bus_mutex);

	if (FUNC5(sl))
		goto error;

	while (retries--) {
		w1_buf[0] = W1_F29_FUNC_WRITE_COND_SEARCH_REG;
		w1_buf[1] = W1_F29_REG_CONTROL_AND_STATUS;
		w1_buf[2] = 0;
		w1_buf[3] = *buf;

		FUNC6(sl->master, w1_buf, 4);
		if (FUNC4(sl->master))
			goto error;

		w1_buf[0] = W1_F29_FUNC_READ_PIO_REGS;
		w1_buf[1] = W1_F29_REG_CONTROL_AND_STATUS;
		w1_buf[2] = 0;

		FUNC6(sl->master, w1_buf, 3);
		if (FUNC3(sl->master) == *buf) {
			/* success! */
			FUNC2(&sl->master->bus_mutex);
			return 1;
		}
	}
error:
	FUNC2(&sl->master->bus_mutex);

	return -EIO;
}