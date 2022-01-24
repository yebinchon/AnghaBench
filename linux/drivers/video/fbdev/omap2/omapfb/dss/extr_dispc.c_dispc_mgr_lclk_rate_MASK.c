#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned long* clkout; } ;
struct dss_pll {TYPE_1__ cinfo; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
#define  OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC 130 
#define  OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC 129 
#define  OMAP_DSS_CLK_SRC_FCK 128 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 () ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 struct dss_pll* FUNC8 (char*) ; 

__attribute__((used)) static unsigned long FUNC9(enum omap_channel channel)
{
	struct dss_pll *pll;
	int lcd;
	unsigned long r;
	u32 l;

	if (FUNC7(channel)) {
		l = FUNC4(FUNC1(channel));

		lcd = FUNC2(l, 23, 16);

		switch (FUNC6(channel)) {
		case OMAP_DSS_CLK_SRC_FCK:
			r = FUNC5();
			break;
		case OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC:
			pll = FUNC8("dsi0");
			if (!pll)
				pll = FUNC8("video0");

			r = pll->cinfo.clkout[0];
			break;
		case OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC:
			pll = FUNC8("dsi1");
			if (!pll)
				pll = FUNC8("video1");

			r = pll->cinfo.clkout[0];
			break;
		default:
			FUNC0();
			return 0;
		}

		return r / lcd;
	} else {
		return FUNC3();
	}
}