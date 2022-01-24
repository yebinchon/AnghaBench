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
typedef  int u16 ;
struct lp3972 {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct lp3972 *lp3972, u8 reg, u16 mask, u16 val)
{
	u16 tmp;
	int ret;

	FUNC3(&lp3972->io_lock);

	ret = FUNC1(lp3972->i2c, reg, 1, &tmp);
	if (ret == 0) {
		tmp = (tmp & ~mask) | val;
		ret = FUNC2(lp3972->i2c, reg, 1, &tmp);
		FUNC0(lp3972->dev, "reg write 0x%02x -> 0x%02x\n", (int)reg,
			(unsigned)val & 0xff);
	}
	FUNC4(&lp3972->io_lock);

	return ret;
}