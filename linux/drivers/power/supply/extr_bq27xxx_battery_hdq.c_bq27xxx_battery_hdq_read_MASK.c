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
typedef  scalar_t__ u8 ;
struct w1_slave {int dummy; } ;
struct bq27xxx_device_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 struct w1_slave* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct w1_slave*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct bq27xxx_device_info *di, u8 reg,
				    bool single)
{
	struct w1_slave *sl = FUNC0(di->dev);
	unsigned int timeout = 3;
	int upper, lower;
	int temp;

	if (!single) {
		/*
		 * Make sure the value has not changed in between reading the
		 * lower and the upper part
		 */
		upper = FUNC1(sl, reg + 1);
		do {
			temp = upper;
			if (upper < 0)
				return upper;

			lower = FUNC1(sl, reg);
			if (lower < 0)
				return lower;

			upper = FUNC1(sl, reg + 1);
		} while (temp != upper && --timeout);

		if (timeout == 0)
			return -EIO;

		return (upper << 8) | lower;
	}

	return FUNC1(sl, reg);
}