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
 int FUNC0 (struct us_data*,int,int*,int) ; 
 int FUNC1 (struct us_data*,int,int*,int) ; 

__attribute__((used)) static int FUNC2(struct us_data *us)
{
	int retval;
	u8 value;

	retval = FUNC0(us, 0xFE77, &value, 1);
	if (retval < 0)
		return -EIO;

	value |= 0x04;
	retval = FUNC1(us, 0xFE77, &value, 1);
	if (retval < 0)
		return -EIO;

	retval = FUNC0(us, 0xFE77, &value, 1);
	if (retval < 0)
		return -EIO;

	if (!(value & 0x04))
		return -EIO;

	return 0;
}