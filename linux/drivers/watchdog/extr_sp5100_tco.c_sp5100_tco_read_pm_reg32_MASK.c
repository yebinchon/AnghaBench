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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC1(u8 index)
{
	u32 val = 0;
	int i;

	for (i = 3; i >= 0; i--)
		val = (val << 8) + FUNC0(index + i);

	return val;
}