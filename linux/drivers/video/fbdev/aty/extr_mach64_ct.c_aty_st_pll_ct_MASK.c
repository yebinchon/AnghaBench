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
struct atyfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_CNTL_ADDR ; 
 int /*<<< orphan*/  CLOCK_CNTL_DATA ; 
 int PLL_ADDR ; 
 int PLL_DATA ; 
 int PLL_WR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct atyfb_par const*) ; 

__attribute__((used)) static void FUNC1(int offset, u8 val, const struct atyfb_par *par)
{
	/* write addr byte */
	FUNC0(CLOCK_CNTL_ADDR, ((offset << 2) & PLL_ADDR) | PLL_WR_EN, par);
	/* write the register value */
	FUNC0(CLOCK_CNTL_DATA, val & PLL_DATA, par);
	FUNC0(CLOCK_CNTL_ADDR, ((offset << 2) & PLL_ADDR) & ~PLL_WR_EN, par);
}