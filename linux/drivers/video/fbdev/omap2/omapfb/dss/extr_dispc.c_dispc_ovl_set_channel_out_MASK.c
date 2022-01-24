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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FEAT_MGR_LCD2 ; 
 int /*<<< orphan*/  FEAT_MGR_LCD3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
#define  OMAP_DSS_CHANNEL_DIGIT 136 
#define  OMAP_DSS_CHANNEL_LCD 135 
#define  OMAP_DSS_CHANNEL_LCD2 134 
#define  OMAP_DSS_CHANNEL_LCD3 133 
#define  OMAP_DSS_CHANNEL_WB 132 
#define  OMAP_DSS_GFX 131 
#define  OMAP_DSS_VIDEO1 130 
#define  OMAP_DSS_VIDEO2 129 
#define  OMAP_DSS_VIDEO3 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(enum omap_plane plane, enum omap_channel channel)
{
	int shift;
	u32 val;
	int chan = 0, chan2 = 0;

	switch (plane) {
	case OMAP_DSS_GFX:
		shift = 8;
		break;
	case OMAP_DSS_VIDEO1:
	case OMAP_DSS_VIDEO2:
	case OMAP_DSS_VIDEO3:
		shift = 16;
		break;
	default:
		FUNC0();
		return;
	}

	val = FUNC3(FUNC1(plane));
	if (FUNC5(FEAT_MGR_LCD2)) {
		switch (channel) {
		case OMAP_DSS_CHANNEL_LCD:
			chan = 0;
			chan2 = 0;
			break;
		case OMAP_DSS_CHANNEL_DIGIT:
			chan = 1;
			chan2 = 0;
			break;
		case OMAP_DSS_CHANNEL_LCD2:
			chan = 0;
			chan2 = 1;
			break;
		case OMAP_DSS_CHANNEL_LCD3:
			if (FUNC5(FEAT_MGR_LCD3)) {
				chan = 0;
				chan2 = 2;
			} else {
				FUNC0();
				return;
			}
			break;
		case OMAP_DSS_CHANNEL_WB:
			chan = 0;
			chan2 = 3;
			break;
		default:
			FUNC0();
			return;
		}

		val = FUNC2(val, chan, shift, shift);
		val = FUNC2(val, chan2, 31, 30);
	} else {
		val = FUNC2(val, channel, shift, shift);
	}
	FUNC4(FUNC1(plane), val);
}