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
struct vc_data {int /*<<< orphan*/  vc_screenbuf_size; int /*<<< orphan*/  vc_video_erase_char; } ;

/* Variables and functions */
 int MDA_MODE_BLINK_EN ; 
 int MDA_MODE_VIDEO_EN ; 
 scalar_t__ TYPE_MDA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mda_mode_port ; 
 scalar_t__ mda_type ; 
 int /*<<< orphan*/  mda_vram_base ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vc_data *c, int blank, int mode_switch)
{
	if (mda_type == TYPE_MDA) {
		if (blank) 
			FUNC2(mda_vram_base,
				FUNC0(c->vc_video_erase_char),
				c->vc_screenbuf_size);
		/* Tell console.c that it has to restore the screen itself */
		return 1;
	} else {
		if (blank)
			FUNC1(0x00, mda_mode_port);	/* disable video */
		else
			FUNC1(MDA_MODE_VIDEO_EN | MDA_MODE_BLINK_EN, 
				mda_mode_port);
		return 0;
	}
}