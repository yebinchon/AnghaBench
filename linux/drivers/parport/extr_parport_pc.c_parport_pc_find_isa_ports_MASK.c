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
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int __attribute__((unused))
FUNC1(int autoirq, int autodma)
{
	int count = 0;

	if (FUNC0(0x3bc, 0x7bc, autoirq, autodma, NULL, 0))
		count++;
	if (FUNC0(0x378, 0x778, autoirq, autodma, NULL, 0))
		count++;
	if (FUNC0(0x278, 0x678, autoirq, autodma, NULL, 0))
		count++;

	return count;
}