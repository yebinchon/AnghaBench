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
struct w1_slave {TYPE_1__* master; struct w1_f1C_data* family_data; } ;
struct w1_f1C_data {int /*<<< orphan*/ * memory; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 size_t EIO ; 
 int /*<<< orphan*/  W1_EEPROM_SIZE ; 
 size_t W1_PAGE_BITS ; 
 struct w1_slave* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ w1_enable_crccheck ; 
 size_t FUNC4 (size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct w1_slave*,size_t,size_t,char*) ; 
 scalar_t__ FUNC6 (struct w1_slave*,struct w1_f1C_data*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct file *filp, struct kobject *kobj,
			   struct bin_attribute *bin_attr, char *buf,
			   loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC0(kobj);
	struct w1_f1C_data *data = sl->family_data;
	int i, min_page, max_page;

	count = FUNC4(off, count, W1_EEPROM_SIZE);
	if (count == 0)
		return 0;

	FUNC2(&sl->master->mutex);

	if (w1_enable_crccheck) {
		min_page = (off >> W1_PAGE_BITS);
		max_page = (off + count - 1) >> W1_PAGE_BITS;
		for (i = min_page; i <= max_page; i++) {
			if (FUNC6(sl, data, i)) {
				count = -EIO;
				goto out_up;
			}
		}
		FUNC1(buf, &data->memory[off], count);
	} else {
		count = FUNC5(sl, off, count, buf);
	}

out_up:
	FUNC3(&sl->master->mutex);

	return count;
}