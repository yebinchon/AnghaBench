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
struct hdmi_audio_format {int /*<<< orphan*/  sample_size; int /*<<< orphan*/  samples_per_word; int /*<<< orphan*/  sample_order; int /*<<< orphan*/  justification; int /*<<< orphan*/  type; int /*<<< orphan*/  en_sig_blk_strt_end; int /*<<< orphan*/  active_chnnls_msk; int /*<<< orphan*/  stereo_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  HDMI_WP_AUDIO_CFG ; 
 scalar_t__ OMAPDSS_VER_OMAP4 ; 
 scalar_t__ OMAPDSS_VER_OMAP4430_ES1 ; 
 scalar_t__ OMAPDSS_VER_OMAP4430_ES2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(struct hdmi_wp_data *wp,
		struct hdmi_audio_format *aud_fmt)
{
	u32 r;

	FUNC0("Enter hdmi_wp_audio_config_format\n");

	r = FUNC2(wp->base, HDMI_WP_AUDIO_CFG);
	if (FUNC4() == OMAPDSS_VER_OMAP4430_ES1 ||
	    FUNC4() == OMAPDSS_VER_OMAP4430_ES2 ||
	    FUNC4() == OMAPDSS_VER_OMAP4) {
		r = FUNC1(r, aud_fmt->stereo_channels, 26, 24);
		r = FUNC1(r, aud_fmt->active_chnnls_msk, 23, 16);
	}
	r = FUNC1(r, aud_fmt->en_sig_blk_strt_end, 5, 5);
	r = FUNC1(r, aud_fmt->type, 4, 4);
	r = FUNC1(r, aud_fmt->justification, 3, 3);
	r = FUNC1(r, aud_fmt->sample_order, 2, 2);
	r = FUNC1(r, aud_fmt->samples_per_word, 1, 1);
	r = FUNC1(r, aud_fmt->sample_size, 0, 0);
	FUNC3(wp->base, HDMI_WP_AUDIO_CFG, r);
}