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
typedef  unsigned int u32 ;
struct sun6i_rtc_dev {scalar_t__ base; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long const) ; 

__attribute__((used)) static int FUNC3(struct sun6i_rtc_dev *chip, int offset,
			  unsigned int mask, unsigned int ms_timeout)
{
	const unsigned long timeout = jiffies + FUNC0(ms_timeout);
	u32 reg;

	do {
		reg = FUNC1(chip->base + offset);
		reg &= mask;

		if (!reg)
			return 0;

	} while (FUNC2(jiffies, timeout));

	return -ETIMEDOUT;
}