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
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKSLEEP ; 
 int /*<<< orphan*/  COREPLL ; 
 int CORE_PLL_EN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  DISPPLL ; 
 int DISP_PLL_EN ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  M24CLK ; 
 int /*<<< orphan*/  MBXCLK ; 
 int /*<<< orphan*/  MEMCLK ; 
 int MEMCLK_EN ; 
 int /*<<< orphan*/  PIXCLK ; 
 int /*<<< orphan*/  PIXCLKDIV ; 
 int /*<<< orphan*/  PIXCLKSRC ; 
 int PIXCLKSRC_PLL_1 ; 
 int PIXCLK_EN ; 
 int /*<<< orphan*/  SDCLK ; 
 int SDCLK_EN ; 
 int /*<<< orphan*/  SYSCLKSRC ; 
 int SYSCLKSRC_PLL_2 ; 
 int /*<<< orphan*/  VOVRCLK ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fb_info *fbi)
{
	/* enable clocks */
	FUNC6(SYSCLKSRC_PLL_2, SYSCLKSRC);
	FUNC6(PIXCLKSRC_PLL_1, PIXCLKSRC);
	FUNC6(0x00000000, CLKSLEEP);

	/* PLL output = (Frefclk * M) / (N * 2^P )
	 *
	 * M: 0x17, N: 0x3, P: 0x0 == 100 Mhz!
	 * M: 0xb, N: 0x1, P: 0x1 == 71 Mhz
	 * */
	FUNC6((FUNC0(0xb) | FUNC1(0x1) | FUNC2(0x1) |
		CORE_PLL_EN),
	       COREPLL);

	FUNC6((FUNC3(0x1b) | FUNC4(0x7) | FUNC5(0x1) |
		DISP_PLL_EN),
	       DISPPLL);

	FUNC6(0x00000000, VOVRCLK);
	FUNC6(PIXCLK_EN, PIXCLK);
	FUNC6(MEMCLK_EN, MEMCLK);
	FUNC6(0x00000001, M24CLK);
	FUNC6(0x00000001, MBXCLK);
	FUNC6(SDCLK_EN, SDCLK);
	FUNC6(0x00000001, PIXCLKDIV);
}