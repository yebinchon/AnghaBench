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
typedef  int u8 ;
typedef  int u16 ;
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
 int W1_F12_FUNC_WRITE_STATUS ; 
 int FUNC0 (int,int) ; 
 struct w1_slave* FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int) ; 
 scalar_t__ FUNC5 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int*,int) ; 

__attribute__((used)) static ssize_t FUNC8(
	struct file *filp, struct kobject *kobj,
	struct bin_attribute *bin_attr,
	char *buf, loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC1(kobj);
	u8 w1_buf[6]={W1_F12_FUNC_WRITE_STATUS, 7, 0, 0, 0, 0};
	u16 crc=0;
	int i;
	ssize_t rtnval=1;

	if (count != 1 || off != 0)
		return -EFAULT;

	FUNC2(&sl->master->bus_mutex);

	if (FUNC5(sl)) {
		FUNC3(&sl->master->bus_mutex);
		return -EIO;
	}

	w1_buf[3] = (((*buf)&3)<<5)|0x1F;
	FUNC7(sl->master, w1_buf, 4);
	FUNC4(sl->master, w1_buf+4, 2);
	for (i=0; i<6; i++)
		crc=FUNC0(crc, w1_buf[i]);
	if (crc==0xb001) /* good read? */
		FUNC6(sl->master, 0xFF);
	else
		rtnval=-EIO;

	FUNC3(&sl->master->bus_mutex);
	return rtnval;
}