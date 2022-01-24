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
struct ufx_data {int dummy; } ;
struct pll_values {int div_f1; int div_r1; int div_q1; int range1; int div_f0; int div_r0; int div_q0; int range0; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pll_values*) ; 
 int FUNC5 (struct ufx_data*,int,int) ; 
 int FUNC6 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC7(struct ufx_data *dev, u32 pixclock)
{
	struct pll_values asic_pll = {0};
	u32 value, clk_pixel, clk_pixel_pll;
	int status;

	/* convert pixclock (in ps) to frequency (in Hz) */
	clk_pixel = FUNC0(pixclock) * 1000;
	FUNC3("pixclock %d ps = clk_pixel %d Hz", pixclock, clk_pixel);

	/* clk_pixel = 1/2 clk_pixel_pll */
	clk_pixel_pll = clk_pixel * 2;

	FUNC4(clk_pixel_pll, &asic_pll);

	/* Keep BYPASS and RESET signals asserted until configured */
	status = FUNC6(dev, 0x7000, 0x8000000F);
	FUNC1(status, "error writing 0x7000");

	value = (asic_pll.div_f1 | (asic_pll.div_r1 << 8) |
		(asic_pll.div_q1 << 16) | (asic_pll.range1 << 20));
	status = FUNC6(dev, 0x7008, value);
	FUNC1(status, "error writing 0x7008");

	value = (asic_pll.div_f0 | (asic_pll.div_r0 << 8) |
		(asic_pll.div_q0 << 16) | (asic_pll.range0 << 20));
	status = FUNC6(dev, 0x7004, value);
	FUNC1(status, "error writing 0x7004");

	status = FUNC5(dev, 0x7000, 0x00000005);
	FUNC1(status,
		"error clearing PLL0 bypass bits in 0x7000");
	FUNC2(1);

	status = FUNC5(dev, 0x7000, 0x0000000A);
	FUNC1(status,
		"error clearing PLL1 bypass bits in 0x7000");
	FUNC2(1);

	status = FUNC5(dev, 0x7000, 0x80000000);
	FUNC1(status, "error clearing gate bits in 0x7000");

	return 0;
}