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
typedef  int /*<<< orphan*/  u8 ;
struct atyfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_CNTL_ADDR ; 
 int /*<<< orphan*/  CLOCK_CNTL_DATA ; 
 int PLL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct atyfb_par const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct atyfb_par const*) ; 

u8 FUNC2(int offset, const struct atyfb_par *par)
{
	u8 res;

	/* write addr byte */
	FUNC1(CLOCK_CNTL_ADDR, (offset << 2) & PLL_ADDR, par);
	/* read the register value */
	res = FUNC0(CLOCK_CNTL_DATA, par);
	return res;
}