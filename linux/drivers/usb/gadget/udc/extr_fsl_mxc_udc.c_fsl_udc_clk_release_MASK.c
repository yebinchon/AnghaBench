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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ mxc_ahb_clk ; 
 scalar_t__ mxc_ipg_clk ; 
 scalar_t__ mxc_per_clk ; 

void FUNC1(void)
{
	if (mxc_per_clk)
		FUNC0(mxc_per_clk);
	FUNC0(mxc_ahb_clk);
	FUNC0(mxc_ipg_clk);
}