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
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;
struct hdmi_video_format {int /*<<< orphan*/  x_res; int /*<<< orphan*/  y_res; int /*<<< orphan*/  packing_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  HDMI_WP_VIDEO_CFG ; 
 int /*<<< orphan*/  HDMI_WP_VIDEO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct hdmi_wp_data *wp,
		struct hdmi_video_format *video_fmt)
{
	u32 l = 0;

	FUNC1(wp->base, HDMI_WP_VIDEO_CFG, video_fmt->packing_mode,
		10, 8);

	l |= FUNC0(video_fmt->y_res, 31, 16);
	l |= FUNC0(video_fmt->x_res, 15, 0);
	FUNC2(wp->base, HDMI_WP_VIDEO_SIZE, l);
}