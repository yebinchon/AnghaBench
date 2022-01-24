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

/* Variables and functions */
 int VGA_CRTC_CURSOR_END ; 
 int VGA_CRTC_CURSOR_START ; 
 scalar_t__ VIDEO_TYPE_VGAC ; 
 int cursor_size_lastfrom ; 
 int cursor_size_lastto ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vga_lock ; 
 int /*<<< orphan*/  vga_video_port_reg ; 
 int /*<<< orphan*/  vga_video_port_val ; 
 scalar_t__ vga_video_type ; 

__attribute__((used)) static void FUNC4(int xpos, int from, int to)
{
	unsigned long flags;
	int curs, cure;

	if ((from == cursor_size_lastfrom) && (to == cursor_size_lastto))
		return;
	cursor_size_lastfrom = from;
	cursor_size_lastto = to;

	FUNC2(&vga_lock, flags);
	if (vga_video_type >= VIDEO_TYPE_VGAC) {
		FUNC1(VGA_CRTC_CURSOR_START, vga_video_port_reg);
		curs = FUNC0(vga_video_port_val);
		FUNC1(VGA_CRTC_CURSOR_END, vga_video_port_reg);
		cure = FUNC0(vga_video_port_val);
	} else {
		curs = 0;
		cure = 0;
	}

	curs = (curs & 0xc0) | from;
	cure = (cure & 0xe0) | to;

	FUNC1(VGA_CRTC_CURSOR_START, vga_video_port_reg);
	FUNC1(curs, vga_video_port_val);
	FUNC1(VGA_CRTC_CURSOR_END, vga_video_port_reg);
	FUNC1(cure, vga_video_port_val);
	FUNC3(&vga_lock, flags);
}