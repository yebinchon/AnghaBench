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
union hdmi_infoframe {int /*<<< orphan*/  vendor; int /*<<< orphan*/  audio; int /*<<< orphan*/  spd; int /*<<< orphan*/  drm; int /*<<< orphan*/  avi; } ;
typedef  int u8 ;

/* Variables and functions */
 int EINVAL ; 
 size_t HDMI_INFOFRAME_HEADER_SIZE ; 
#define  HDMI_INFOFRAME_TYPE_AUDIO 132 
#define  HDMI_INFOFRAME_TYPE_AVI 131 
#define  HDMI_INFOFRAME_TYPE_DRM 130 
#define  HDMI_INFOFRAME_TYPE_SPD 129 
#define  HDMI_INFOFRAME_TYPE_VENDOR 128 
 int FUNC0 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 

int FUNC5(union hdmi_infoframe *frame,
			  const void *buffer, size_t size)
{
	int ret;
	const u8 *ptr = buffer;

	if (size < HDMI_INFOFRAME_HEADER_SIZE)
		return -EINVAL;

	switch (ptr[0]) {
	case HDMI_INFOFRAME_TYPE_AVI:
		ret = FUNC1(&frame->avi, buffer, size);
		break;
	case HDMI_INFOFRAME_TYPE_DRM:
		ret = FUNC2(&frame->drm, buffer, size);
		break;
	case HDMI_INFOFRAME_TYPE_SPD:
		ret = FUNC3(&frame->spd, buffer, size);
		break;
	case HDMI_INFOFRAME_TYPE_AUDIO:
		ret = FUNC0(&frame->audio, buffer, size);
		break;
	case HDMI_INFOFRAME_TYPE_VENDOR:
		ret = FUNC4(&frame->vendor, buffer, size);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}