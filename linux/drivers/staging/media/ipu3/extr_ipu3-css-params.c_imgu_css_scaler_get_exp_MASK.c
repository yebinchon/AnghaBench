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

/* Variables and functions */
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(unsigned int counter,
					    unsigned int divider)
{
	int i = FUNC0(divider) - FUNC0(counter);

	if (i <= 0)
		return 0;

	if (divider >> i < counter)
		i = i - 1;

	return i;
}