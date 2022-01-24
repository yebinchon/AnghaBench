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
struct TYPE_2__ {int type; } ;
union hdmi_infoframe {int /*<<< orphan*/  drm; int /*<<< orphan*/  vendor; int /*<<< orphan*/  audio; int /*<<< orphan*/  spd; int /*<<< orphan*/  avi; TYPE_1__ any; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  HDMI_INFOFRAME_TYPE_AUDIO 132 
#define  HDMI_INFOFRAME_TYPE_AVI 131 
#define  HDMI_INFOFRAME_TYPE_DRM 130 
#define  HDMI_INFOFRAME_TYPE_SPD 129 
#define  HDMI_INFOFRAME_TYPE_VENDOR 128 
 int /*<<< orphan*/  FUNC0 (char const*,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct device*,int /*<<< orphan*/ *) ; 

void FUNC5(const char *level,
			struct device *dev,
			const union hdmi_infoframe *frame)
{
	switch (frame->any.type) {
	case HDMI_INFOFRAME_TYPE_AVI:
		FUNC1(level, dev, &frame->avi);
		break;
	case HDMI_INFOFRAME_TYPE_SPD:
		FUNC3(level, dev, &frame->spd);
		break;
	case HDMI_INFOFRAME_TYPE_AUDIO:
		FUNC0(level, dev, &frame->audio);
		break;
	case HDMI_INFOFRAME_TYPE_VENDOR:
		FUNC4(level, dev, &frame->vendor);
		break;
	case HDMI_INFOFRAME_TYPE_DRM:
		FUNC2(level, dev, &frame->drm);
		break;
	}
}