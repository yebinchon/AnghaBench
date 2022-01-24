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
typedef  unsigned int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 

__attribute__((used)) static unsigned long FUNC1(unsigned int clk,
					  unsigned int scale,
					  unsigned int step)
{
	u64 t;
	u32 div;

	div = (2 << 16) * (scale + 1);
	t = clk;
	t *= step;
	t += (div / 2);
	FUNC0(t, div);

	return t;
}