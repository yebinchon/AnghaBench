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
typedef  int u8 ;
struct atyfb_par {scalar_t__ clk_wr_offset; } ;

/* Variables and functions */
 scalar_t__ CLOCK_CNTL ; 
 int /*<<< orphan*/  FUNC0 (struct atyfb_par const*) ; 
 int FUNC1 (scalar_t__,struct atyfb_par const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,struct atyfb_par const*) ; 

__attribute__((used)) static void FUNC3(u8 data, const struct atyfb_par *par)
{
	u8 tmp;

	data &= 0x01;
	tmp = FUNC1(CLOCK_CNTL, par);
	FUNC2(CLOCK_CNTL + par->clk_wr_offset,
		 (tmp & ~0x04) | (data << 2), par);

	tmp = FUNC1(CLOCK_CNTL, par);
	FUNC2(CLOCK_CNTL + par->clk_wr_offset, (tmp & ~0x08) | (0 << 3),
		 par);

	FUNC0(par);

	tmp = FUNC1(CLOCK_CNTL, par);
	FUNC2(CLOCK_CNTL + par->clk_wr_offset, (tmp & ~0x08) | (1 << 3),
		 par);

	FUNC0(par);
	return;
}