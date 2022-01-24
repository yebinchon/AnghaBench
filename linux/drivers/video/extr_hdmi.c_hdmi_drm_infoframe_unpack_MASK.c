#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int x; int y; } ;
struct hdmi_drm_infoframe {int eotf; int metadata_type; int max_display_mastering_luminance; int min_display_mastering_luminance; int max_cll; int max_fall; TYPE_2__ white_point; TYPE_1__* display_primaries; } ;
struct TYPE_3__ {int x; int y; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM ; 
 int EINVAL ; 
 int const HDMI_DRM_INFOFRAME_SIZE ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_HEADER_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int const HDMI_INFOFRAME_TYPE_DRM ; 
 int FUNC1 (struct hdmi_drm_infoframe*) ; 
 scalar_t__ FUNC2 (void const*,size_t) ; 

__attribute__((used)) static int FUNC3(struct hdmi_drm_infoframe *frame,
				     const void *buffer, size_t size)
{
	const u8 *ptr = buffer;
	const u8 *temp;
	u8 x_lsb, x_msb;
	u8 y_lsb, y_msb;
	int ret;
	int i;

	if (size < FUNC0(DRM))
		return -EINVAL;

	if (ptr[0] != HDMI_INFOFRAME_TYPE_DRM ||
	    ptr[1] != 1 ||
	    ptr[2] != HDMI_DRM_INFOFRAME_SIZE)
		return -EINVAL;

	if (FUNC2(buffer, FUNC0(DRM)) != 0)
		return -EINVAL;

	ret = FUNC1(frame);
	if (ret)
		return ret;

	ptr += HDMI_INFOFRAME_HEADER_SIZE;

	frame->eotf = ptr[0] & 0x7;
	frame->metadata_type = ptr[1] & 0x7;

	temp = ptr + 2;
	for (i = 0; i < 3; i++) {
		x_lsb = *temp++;
		x_msb = *temp++;
		frame->display_primaries[i].x =  (x_msb << 8) | x_lsb;
		y_lsb = *temp++;
		y_msb = *temp++;
		frame->display_primaries[i].y = (y_msb << 8) | y_lsb;
	}

	frame->white_point.x = (ptr[15] << 8) | ptr[14];
	frame->white_point.y = (ptr[17] << 8) | ptr[16];

	frame->max_display_mastering_luminance = (ptr[19] << 8) | ptr[18];
	frame->min_display_mastering_luminance = (ptr[21] << 8) | ptr[20];
	frame->max_cll = (ptr[23] << 8) | ptr[22];
	frame->max_fall = (ptr[25] << 8) | ptr[24];

	return 0;
}