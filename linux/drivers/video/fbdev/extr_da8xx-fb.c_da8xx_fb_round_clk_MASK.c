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
struct da8xx_fb_par {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct da8xx_fb_par*,unsigned int,unsigned int*) ; 

__attribute__((used)) static unsigned FUNC2(struct da8xx_fb_par *par,
					  unsigned pixclock)
{
	unsigned lcdc_clk_div, lcdc_clk_rate;

	lcdc_clk_div = FUNC1(par, pixclock, &lcdc_clk_rate);
	return FUNC0(lcdc_clk_rate / (1000 * lcdc_clk_div));
}