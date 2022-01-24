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
union hdmi_infoframe {TYPE_1__ any; int /*<<< orphan*/  vendor; int /*<<< orphan*/  audio; int /*<<< orphan*/  spd; int /*<<< orphan*/  avi; } ;

/* Variables and functions */
 int EINVAL ; 
#define  HDMI_INFOFRAME_TYPE_AUDIO 131 
#define  HDMI_INFOFRAME_TYPE_AVI 130 
#define  HDMI_INFOFRAME_TYPE_SPD 129 
#define  HDMI_INFOFRAME_TYPE_VENDOR 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(union hdmi_infoframe *frame)
{
	switch (frame->any.type) {
	case HDMI_INFOFRAME_TYPE_AVI:
		return FUNC2(&frame->avi);
	case HDMI_INFOFRAME_TYPE_SPD:
		return FUNC3(&frame->spd);
	case HDMI_INFOFRAME_TYPE_AUDIO:
		return FUNC1(&frame->audio);
	case HDMI_INFOFRAME_TYPE_VENDOR:
		return FUNC4(&frame->vendor);
	default:
		FUNC0(1, "Bad infoframe type %d\n", frame->any.type);
		return -EINVAL;
	}
}