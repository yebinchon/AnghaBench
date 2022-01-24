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
 int FUNC0 (struct rbsp*) ; 
 int FUNC1 (struct rbsp*,int,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct rbsp *rbsp, unsigned int *value)
{
	int leading_zero_bits = 0;
	unsigned int tmp = 0;
	int ret;

	while ((ret = FUNC0(rbsp)) == 0)
		leading_zero_bits++;
	if (ret < 0)
		return ret;

	if (leading_zero_bits > 0) {
		ret = FUNC1(rbsp, leading_zero_bits, &tmp);
		if (ret)
			return ret;
	}

	if (value)
		*value = (1 << leading_zero_bits) - 1 + tmp;

	return 0;
}