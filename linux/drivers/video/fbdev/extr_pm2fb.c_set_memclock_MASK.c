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
struct pm2fb_par {int type; } ;

/* Variables and functions */
 int PM2F_PLL_LOCKED ; 
 int /*<<< orphan*/  PM2I_RD_MEMORY_CLOCK_1 ; 
 int /*<<< orphan*/  PM2I_RD_MEMORY_CLOCK_2 ; 
 int /*<<< orphan*/  PM2I_RD_MEMORY_CLOCK_3 ; 
 int /*<<< orphan*/  PM2I_RD_MEMORY_CLOCK_STATUS ; 
 int /*<<< orphan*/  PM2R_RD_INDEXED_DATA ; 
 int PM2VI_RD_MCLK_CONTROL ; 
 int PM2VI_RD_MCLK_FEEDBACK ; 
 int PM2VI_RD_MCLK_POSTSCALE ; 
 int PM2VI_RD_MCLK_PRESCALE ; 
 int /*<<< orphan*/  PM2VR_RD_INDEX_HIGH ; 
#define  PM2_TYPE_PERMEDIA2 129 
#define  PM2_TYPE_PERMEDIA2V 128 
 int /*<<< orphan*/  FUNC0 (struct pm2fb_par*,int) ; 
 int FUNC1 (struct pm2fb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pm2fb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm2fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pm2fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC6 (struct pm2fb_par*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pm2fb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct pm2fb_par *par, u32 clk)
{
	int i;
	unsigned char m, n, p;

	switch (par->type) {
	case PM2_TYPE_PERMEDIA2V:
		FUNC8(clk/2, &m, &n, &p);
		FUNC0(par, 12);
		FUNC4(par, PM2VR_RD_INDEX_HIGH, PM2VI_RD_MCLK_CONTROL >> 8);
		FUNC7(par, PM2VI_RD_MCLK_CONTROL, 0);
		FUNC7(par, PM2VI_RD_MCLK_PRESCALE, m);
		FUNC7(par, PM2VI_RD_MCLK_FEEDBACK, n);
		FUNC7(par, PM2VI_RD_MCLK_POSTSCALE, p);
		FUNC7(par, PM2VI_RD_MCLK_CONTROL, 1);
		FUNC9();
		for (i = 256; i; i--)
			if (FUNC6(par, PM2VI_RD_MCLK_CONTROL) & 2)
				break;
		FUNC4(par, PM2VR_RD_INDEX_HIGH, 0);
		break;
	case PM2_TYPE_PERMEDIA2:
		FUNC5(clk, &m, &n, &p);
		FUNC0(par, 10);
		FUNC3(par, PM2I_RD_MEMORY_CLOCK_3, 6);
		FUNC3(par, PM2I_RD_MEMORY_CLOCK_1, m);
		FUNC3(par, PM2I_RD_MEMORY_CLOCK_2, n);
		FUNC3(par, PM2I_RD_MEMORY_CLOCK_3, 8|p);
		FUNC2(par, PM2I_RD_MEMORY_CLOCK_STATUS);
		FUNC9();
		for (i = 256; i; i--)
			if (FUNC1(par, PM2R_RD_INDEXED_DATA) & PM2F_PLL_LOCKED)
				break;
		break;
	}
}