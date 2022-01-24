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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rio_dev {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 unsigned int RIO_MAINT_SPACE_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_dev*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_dev*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rio_dev*,unsigned int,int*) ; 
 struct rio_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC6(struct file *filp, struct kobject *kobj,
		struct bin_attribute *bin_attr,
		char *buf, loff_t off, size_t count)
{
	struct rio_dev *dev = FUNC5(FUNC1(kobj));
	unsigned int size = 0x100;
	loff_t init_off = off;
	u8 *data = (u8 *) buf;

	/* Several chips lock up trying to read undefined config space */
	if (FUNC0(CAP_SYS_ADMIN))
		size = RIO_MAINT_SPACE_SZ;

	if (off >= size)
		return 0;
	if (off + count > size) {
		size -= off;
		count = size;
	} else {
		size = count;
	}

	if ((off & 1) && size) {
		u8 val;
		FUNC4(dev, off, &val);
		data[off - init_off] = val;
		off++;
		size--;
	}

	if ((off & 3) && size > 2) {
		u16 val;
		FUNC2(dev, off, &val);
		data[off - init_off] = (val >> 8) & 0xff;
		data[off - init_off + 1] = val & 0xff;
		off += 2;
		size -= 2;
	}

	while (size > 3) {
		u32 val;
		FUNC3(dev, off, &val);
		data[off - init_off] = (val >> 24) & 0xff;
		data[off - init_off + 1] = (val >> 16) & 0xff;
		data[off - init_off + 2] = (val >> 8) & 0xff;
		data[off - init_off + 3] = val & 0xff;
		off += 4;
		size -= 4;
	}

	if (size >= 2) {
		u16 val;
		FUNC2(dev, off, &val);
		data[off - init_off] = (val >> 8) & 0xff;
		data[off - init_off + 1] = val & 0xff;
		off += 2;
		size -= 2;
	}

	if (size > 0) {
		u8 val;
		FUNC4(dev, off, &val);
		data[off - init_off] = val;
		off++;
		--size;
	}

	return count;
}