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
struct us_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct us_data*,int*,int) ; 
 int FUNC1 (struct us_data*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct us_data *us, int enable, int force)
{
	int retval;
	u8 value;

	retval = FUNC1(us, 0xFE47, &value, 1);
	if (retval < 0)
		return -EIO;

	if (enable) {
		if (force)
			value |= 0x03;
		else
			value |= 0x01;
	} else {
		value &= ~0x03;
	}

	FUNC2(us, "set 0xfe47 to 0x%x\n", value);

	/* retval = rts51x_write_mem(us, 0xFE47, &value, 1); */
	retval = FUNC0(us, &value, 1);
	if (retval < 0)
		return -EIO;

	return 0;
}