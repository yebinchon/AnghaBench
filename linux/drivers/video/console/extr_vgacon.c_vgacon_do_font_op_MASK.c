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
struct vgastate {int /*<<< orphan*/  vgabase; } ;
struct vc_data {int vc_hi_font_mask; int /*<<< orphan*/ * vc_sw; } ;
struct TYPE_2__ {struct vc_data* d; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_NR_CONSOLES ; 
 int /*<<< orphan*/  VGA_AR_ENABLE_DISPLAY ; 
 int /*<<< orphan*/  VGA_ATC_PLANE_ENABLE ; 
 int /*<<< orphan*/  VGA_GFX_MISC ; 
 int /*<<< orphan*/  VGA_GFX_MODE ; 
 int /*<<< orphan*/  VGA_GFX_PLANE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA_SEQ_CHARACTER_MAP ; 
 int /*<<< orphan*/  VGA_SEQ_MEMORY_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_PLANE_WRITE ; 
 int /*<<< orphan*/  VGA_SEQ_RESET ; 
 scalar_t__ VIDEO_TYPE_EGAM ; 
 int /*<<< orphan*/  blackwmap ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 int cmapsz ; 
 int /*<<< orphan*/  colourmap ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* vc_cons ; 
 int vga_512_chars ; 
 int /*<<< orphan*/  vga_con ; 
 int vga_font_is_default ; 
 int /*<<< orphan*/  vga_lock ; 
 char FUNC6 (char*) ; 
 int vga_video_port_reg ; 
 scalar_t__ vga_video_type ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct vgastate *state, char *arg, int set,
		bool ch512)
{
	unsigned short video_port_status = vga_video_port_reg + 6;
	int font_select = 0x00, beg, i;
	char *charmap;
	bool clear_attribs = false;
	if (vga_video_type != VIDEO_TYPE_EGAM) {
		charmap = (char *) FUNC0(colourmap, 0);
		beg = 0x0e;
	} else {
		charmap = (char *) FUNC0(blackwmap, 0);
		beg = 0x0a;
	}

#ifdef BROKEN_GRAPHICS_PROGRAMS
	/*
	 * All fonts are loaded in slot 0 (0:1 for 512 ch)
	 */

	if (!arg)
		return -EINVAL;	/* Return to default font not supported */

	vga_font_is_default = false;
	font_select = ch512 ? 0x04 : 0x00;
#else
	/*
	 * The default font is kept in slot 0 and is never touched.
	 * A custom font is loaded in slot 2 (256 ch) or 2:3 (512 ch)
	 */

	if (set) {
		vga_font_is_default = !arg;
		if (!arg)
			ch512 = false;	/* Default font is always 256 */
		font_select = arg ? (ch512 ? 0x0e : 0x0a) : 0x00;
	}

	if (!vga_font_is_default)
		charmap += 4 * cmapsz;
#endif

	FUNC4(&vga_lock);
	/* First, the Sequencer */
	FUNC10(state->vgabase, VGA_SEQ_RESET, 0x1);
	/* CPU writes only to map 2 */
	FUNC10(state->vgabase, VGA_SEQ_PLANE_WRITE, 0x04);	
	/* Sequential addressing */
	FUNC10(state->vgabase, VGA_SEQ_MEMORY_MODE, 0x07);	
	/* Clear synchronous reset */
	FUNC10(state->vgabase, VGA_SEQ_RESET, 0x03);

	/* Now, the graphics controller, select map 2 */
	FUNC8(state->vgabase, VGA_GFX_PLANE_READ, 0x02);		
	/* disable odd-even addressing */
	FUNC8(state->vgabase, VGA_GFX_MODE, 0x00);
	/* map start at A000:0000 */
	FUNC8(state->vgabase, VGA_GFX_MISC, 0x00);
	FUNC5(&vga_lock);

	if (arg) {
		if (set)
			for (i = 0; i < cmapsz; i++) {
				FUNC9(arg[i], charmap + i);
				FUNC2();
			}
		else
			for (i = 0; i < cmapsz; i++) {
				arg[i] = FUNC6(charmap + i);
				FUNC2();
			}

		/*
		 * In 512-character mode, the character map is not contiguous if
		 * we want to remain EGA compatible -- which we do
		 */

		if (ch512) {
			charmap += 2 * cmapsz;
			arg += cmapsz;
			if (set)
				for (i = 0; i < cmapsz; i++) {
					FUNC9(arg[i], charmap + i);
					FUNC2();
				}
			else
				for (i = 0; i < cmapsz; i++) {
					arg[i] = FUNC6(charmap + i);
					FUNC2();
				}
		}
	}

	FUNC4(&vga_lock);
	/* First, the sequencer, Synchronous reset */
	FUNC10(state->vgabase, VGA_SEQ_RESET, 0x01);	
	/* CPU writes to maps 0 and 1 */
	FUNC10(state->vgabase, VGA_SEQ_PLANE_WRITE, 0x03);
	/* odd-even addressing */
	FUNC10(state->vgabase, VGA_SEQ_MEMORY_MODE, 0x03);
	/* Character Map Select */
	if (set)
		FUNC10(state->vgabase, VGA_SEQ_CHARACTER_MAP, font_select);
	/* clear synchronous reset */
	FUNC10(state->vgabase, VGA_SEQ_RESET, 0x03);

	/* Now, the graphics controller, select map 0 for CPU */
	FUNC8(state->vgabase, VGA_GFX_PLANE_READ, 0x00);
	/* enable even-odd addressing */
	FUNC8(state->vgabase, VGA_GFX_MODE, 0x10);
	/* map starts at b800:0 or b000:0 */
	FUNC8(state->vgabase, VGA_GFX_MISC, beg);

	/* if 512 char mode is already enabled don't re-enable it. */
	if ((set) && (ch512 != vga_512_chars)) {
		vga_512_chars = ch512;
		/* 256-char: enable intensity bit
		   512-char: disable intensity bit */
		FUNC3(video_port_status);	/* clear address flip-flop */
		/* color plane enable register */
		FUNC7(state->vgabase, VGA_ATC_PLANE_ENABLE, ch512 ? 0x07 : 0x0f);
		/* Wilton (1987) mentions the following; I don't know what
		   it means, but it works, and it appears necessary */
		FUNC3(video_port_status);
		FUNC7(state->vgabase, VGA_AR_ENABLE_DISPLAY, 0);	
		clear_attribs = true;
	}
	FUNC5(&vga_lock);

	if (clear_attribs) {
		for (i = 0; i < MAX_NR_CONSOLES; i++) {
			struct vc_data *c = vc_cons[i].d;
			if (c && c->vc_sw == &vga_con) {
				/* force hi font mask to 0, so we always clear
				   the bit on either transition */
				c->vc_hi_font_mask = 0x00;
				FUNC1(c);
				c->vc_hi_font_mask = ch512 ? 0x0800 : 0;
			}
		}
	}
	return 0;
}