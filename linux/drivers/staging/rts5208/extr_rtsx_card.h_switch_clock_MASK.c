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
struct rtsx_chip {scalar_t__ asic_code; } ;

/* Variables and functions */
 int FUNC0 (struct rtsx_chip*,int) ; 
 int FUNC1 (struct rtsx_chip*,int) ; 

__attribute__((used)) static inline int FUNC2(struct rtsx_chip *chip, int clk)
{
	int retval = 0;

	if (chip->asic_code)
		retval = FUNC1(chip, clk);
	else
		retval = FUNC0(chip, clk);

	return retval;
}