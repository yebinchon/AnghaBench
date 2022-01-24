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
struct pic32_sqi {scalar_t__ regs; int /*<<< orphan*/  base_clk; } ;

/* Variables and functions */
 int PESQI_CLKDIV ; 
 int PESQI_CLKDIV_SHIFT ; 
 scalar_t__ PESQI_CLK_CTRL_REG ; 
 int PESQI_CLK_STABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pic32_sqi *sqi, u32 sck)
{
	u32 val, div;

	/* div = base_clk / (2 * spi_clk) */
	div = FUNC0(sqi->base_clk) / (2 * sck);
	div &= PESQI_CLKDIV;

	val = FUNC1(sqi->regs + PESQI_CLK_CTRL_REG);
	/* apply new divider */
	val &= ~(PESQI_CLK_STABLE | (PESQI_CLKDIV << PESQI_CLKDIV_SHIFT));
	val |= div << PESQI_CLKDIV_SHIFT;
	FUNC3(val, sqi->regs + PESQI_CLK_CTRL_REG);

	/* wait for stability */
	return FUNC2(sqi->regs + PESQI_CLK_CTRL_REG, val,
				  val & PESQI_CLK_STABLE, 1, 5000);
}