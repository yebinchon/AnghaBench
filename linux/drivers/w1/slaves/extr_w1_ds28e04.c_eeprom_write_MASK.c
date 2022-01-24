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
struct w1_slave {TYPE_1__* master; int /*<<< orphan*/  dev; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC16_INIT ; 
 scalar_t__ CRC16_VALID ; 
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  W1_EEPROM_SIZE ; 
 size_t W1_PAGE_MASK ; 
 int W1_PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct w1_slave* FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ w1_enable_crccheck ; 
 size_t FUNC5 (size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct w1_slave*,int,int,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct file *filp, struct kobject *kobj,
			    struct bin_attribute *bin_attr, char *buf,
			    loff_t off, size_t count)

{
	struct w1_slave *sl = FUNC2(kobj);
	int addr, len, idx;

	count = FUNC5(off, count, W1_EEPROM_SIZE);
	if (count == 0)
		return 0;

	if (w1_enable_crccheck) {
		/* can only write full blocks in cached mode */
		if ((off & W1_PAGE_MASK) || (count & W1_PAGE_MASK)) {
			FUNC1(&sl->dev, "invalid offset/count off=%d cnt=%zd\n",
				(int)off, count);
			return -EINVAL;
		}

		/* make sure the block CRCs are valid */
		for (idx = 0; idx < count; idx += W1_PAGE_SIZE) {
			if (FUNC0(CRC16_INIT, &buf[idx], W1_PAGE_SIZE)
				!= CRC16_VALID) {
				FUNC1(&sl->dev, "bad CRC at offset %d\n",
					(int)off);
				return -EINVAL;
			}
		}
	}

	FUNC3(&sl->master->mutex);

	/* Can only write data to one page at a time */
	idx = 0;
	while (idx < count) {
		addr = off + idx;
		len = W1_PAGE_SIZE - (addr & W1_PAGE_MASK);
		if (len > (count - idx))
			len = count - idx;

		if (FUNC6(sl, addr, len, &buf[idx]) < 0) {
			count = -EIO;
			goto out_up;
		}
		idx += len;
	}

out_up:
	FUNC4(&sl->master->mutex);

	return count;
}