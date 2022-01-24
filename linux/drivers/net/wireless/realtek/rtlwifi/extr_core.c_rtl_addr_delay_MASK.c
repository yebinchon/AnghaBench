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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(u32 addr)
{
	if (addr == 0xfe)
		FUNC0(50);
	else if (addr == 0xfd)
		FUNC1(5);
	else if (addr == 0xfc)
		FUNC1(1);
	else if (addr == 0xfb)
		FUNC2(50, 100);
	else if (addr == 0xfa)
		FUNC2(5, 10);
	else if (addr == 0xf9)
		FUNC2(1, 2);
}