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
typedef  enum omap_display_type { ____Placeholder_omap_display_type } omap_display_type ;
typedef  enum dss_hdmi_venc_clk_source_select { ____Placeholder_dss_hdmi_venc_clk_source_select } dss_hdmi_venc_clk_source_select ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_CONTROL ; 
 int DSS_HDMI_M_PCLK ; 
 int DSS_VENC_TV_CLK ; 
 int OMAP_DISPLAY_TYPE_HDMI ; 
 int OMAP_DISPLAY_TYPE_VENC ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_DIGIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(enum dss_hdmi_venc_clk_source_select src)
{
	enum omap_display_type dp;
	dp = FUNC2(OMAP_DSS_CHANNEL_DIGIT);

	/* Complain about invalid selections */
	FUNC1((src == DSS_VENC_TV_CLK) && !(dp & OMAP_DISPLAY_TYPE_VENC));
	FUNC1((src == DSS_HDMI_M_PCLK) && !(dp & OMAP_DISPLAY_TYPE_HDMI));

	/* Select only if we have options */
	if ((dp & OMAP_DISPLAY_TYPE_VENC) && (dp & OMAP_DISPLAY_TYPE_HDMI))
		FUNC0(DSS_CONTROL, src, 15, 15);	/* VENC_HDMI_SWITCH */
}