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
struct rbsp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct rbsp*,int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct rbsp *rbsp, unsigned int *value)
{
	int ret;
	int leading_zero_bits;

	if (!value)
		return -EINVAL;

	leading_zero_bits = FUNC0(*value + 1);

	ret = FUNC1(rbsp, leading_zero_bits, 0);
	if (ret)
		return ret;

	return FUNC1(rbsp, leading_zero_bits + 1, *value + 1);
}