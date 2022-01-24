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
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  OMAPDSS_VER_AM35xx 137 
#define  OMAPDSS_VER_AM43xx 136 
#define  OMAPDSS_VER_OMAP24xx 135 
#define  OMAPDSS_VER_OMAP34xx_ES1 134 
#define  OMAPDSS_VER_OMAP34xx_ES3 133 
#define  OMAPDSS_VER_OMAP3630 132 
#define  OMAPDSS_VER_OMAP4 131 
#define  OMAPDSS_VER_OMAP4430_ES1 130 
#define  OMAPDSS_VER_OMAP4430_ES2 129 
#define  OMAPDSS_VER_OMAP5 128 
 int OMAP_DSS_CHANNEL_LCD ; 
 int OMAP_DSS_CHANNEL_LCD2 ; 
 int OMAP_DSS_CHANNEL_LCD3 ; 
 int FUNC1 () ; 

__attribute__((used)) static enum omap_channel FUNC2(int module_id)
{
	switch (FUNC1()) {
	case OMAPDSS_VER_OMAP24xx:
	case OMAPDSS_VER_AM43xx:
		FUNC0("DSI not supported\n");
		return OMAP_DSS_CHANNEL_LCD;

	case OMAPDSS_VER_OMAP34xx_ES1:
	case OMAPDSS_VER_OMAP34xx_ES3:
	case OMAPDSS_VER_OMAP3630:
	case OMAPDSS_VER_AM35xx:
		return OMAP_DSS_CHANNEL_LCD;

	case OMAPDSS_VER_OMAP4430_ES1:
	case OMAPDSS_VER_OMAP4430_ES2:
	case OMAPDSS_VER_OMAP4:
		switch (module_id) {
		case 0:
			return OMAP_DSS_CHANNEL_LCD;
		case 1:
			return OMAP_DSS_CHANNEL_LCD2;
		default:
			FUNC0("unsupported module id\n");
			return OMAP_DSS_CHANNEL_LCD;
		}

	case OMAPDSS_VER_OMAP5:
		switch (module_id) {
		case 0:
			return OMAP_DSS_CHANNEL_LCD;
		case 1:
			return OMAP_DSS_CHANNEL_LCD3;
		default:
			FUNC0("unsupported module id\n");
			return OMAP_DSS_CHANNEL_LCD;
		}

	default:
		FUNC0("unsupported DSS version\n");
		return OMAP_DSS_CHANNEL_LCD;
	}
}