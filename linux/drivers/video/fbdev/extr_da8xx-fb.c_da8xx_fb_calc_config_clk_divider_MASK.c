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
struct fb_videomode {int /*<<< orphan*/  pixclock; } ;
struct da8xx_fb_par {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct da8xx_fb_par*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (struct da8xx_fb_par*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct da8xx_fb_par *par,
					    struct fb_videomode *mode)
{
	unsigned lcdc_clk_rate;
	unsigned lcdc_clk_div = FUNC0(par, mode->pixclock,
							  &lcdc_clk_rate);

	return FUNC1(par, lcdc_clk_div, lcdc_clk_rate);
}