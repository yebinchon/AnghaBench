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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u16 ;
struct vt_notifier_param {int c; struct vc_data* vc; } ;
struct vc_data {unsigned int vc_num; int vc_hi_font_mask; scalar_t__ vc_state; int vc_utf_count; int vc_utf_char; int vc_npar; unsigned char vc_attr; unsigned long vc_pos; int vc_x; int vc_cols; scalar_t__ vc_decawm; scalar_t__ vc_need_wrap; scalar_t__ vc_decim; int /*<<< orphan*/  vc_can_do_color; scalar_t__ vc_disp_ctrl; scalar_t__ vc_utf; } ;
struct tty_struct {int /*<<< orphan*/  stopped; struct vc_data* driver_data; } ;

/* Variables and functions */
 int CTRL_ACTION ; 
 int CTRL_ALWAYS ; 
 scalar_t__ ESnormal ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  VT_PREWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vt_notifier_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,unsigned long,unsigned long,int*) ; 
 scalar_t__ FUNC2 (struct vc_data*) ; 
 scalar_t__ FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct vc_data*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*,struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vc_data*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct vc_data*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char,int*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 int FUNC22 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC24 (struct vc_data*,int) ; 
 int /*<<< orphan*/  vt_notifier_list ; 

__attribute__((used)) static int FUNC25(struct tty_struct *tty, const unsigned char *buf, int count)
{
	int c, next_c, tc, ok, n = 0, draw_x = -1;
	unsigned int currcons;
	unsigned long draw_from = 0, draw_to = 0;
	struct vc_data *vc;
	unsigned char vc_attr;
	struct vt_notifier_param param;
	uint8_t rescan;
	uint8_t inverse;
	uint8_t width;
	u16 himask, charmask;

	if (FUNC11())
		return count;

	FUNC15();

	FUNC5();
	vc = tty->driver_data;
	if (vc == NULL) {
		FUNC18("vt: argh, driver_data is NULL !\n");
		FUNC6();
		return 0;
	}

	currcons = vc->vc_num;
	if (!FUNC21(currcons)) {
		/* could this happen? */
		FUNC19("con_write: tty %d not allocated\n", currcons+1);
		FUNC6();
		return 0;
	}

	himask = vc->vc_hi_font_mask;
	charmask = himask ? 0x1ff : 0xff;

	/* undraw cursor first */
	if (FUNC2(vc))
		FUNC10(vc);

	param.vc = vc;

	while (!tty->stopped && count) {
		int orig = *buf;
		c = orig;
		buf++;
		n++;
		count--;
		rescan = 0;
		inverse = 0;
		width = 1;

		/* Do no translation at all in control states */
		if (vc->vc_state != ESnormal) {
			tc = c;
		} else if (vc->vc_utf && !vc->vc_disp_ctrl) {
		    /* Combine UTF-8 into Unicode in vc_utf_char.
		     * vc_utf_count is the number of continuation bytes still
		     * expected to arrive.
		     * vc_npar is the number of continuation bytes arrived so
		     * far
		     */
rescan_last_byte:
		    if ((c & 0xc0) == 0x80) {
			/* Continuation byte received */
			static const uint32_t utf8_length_changes[] = { 0x0000007f, 0x000007ff, 0x0000ffff, 0x001fffff, 0x03ffffff, 0x7fffffff };
			if (vc->vc_utf_count) {
			    vc->vc_utf_char = (vc->vc_utf_char << 6) | (c & 0x3f);
			    vc->vc_npar++;
			    if (--vc->vc_utf_count) {
				/* Still need some bytes */
				continue;
			    }
			    /* Got a whole character */
			    c = vc->vc_utf_char;
			    /* Reject overlong sequences */
			    if (c <= utf8_length_changes[vc->vc_npar - 1] ||
					c > utf8_length_changes[vc->vc_npar])
				c = 0xfffd;
			} else {
			    /* Unexpected continuation byte */
			    vc->vc_utf_count = 0;
			    c = 0xfffd;
			}
		    } else {
			/* Single ASCII byte or first byte of a sequence received */
			if (vc->vc_utf_count) {
			    /* Continuation byte expected */
			    rescan = 1;
			    vc->vc_utf_count = 0;
			    c = 0xfffd;
			} else if (c > 0x7f) {
			    /* First byte of a multibyte sequence received */
			    vc->vc_npar = 0;
			    if ((c & 0xe0) == 0xc0) {
				vc->vc_utf_count = 1;
				vc->vc_utf_char = (c & 0x1f);
			    } else if ((c & 0xf0) == 0xe0) {
				vc->vc_utf_count = 2;
				vc->vc_utf_char = (c & 0x0f);
			    } else if ((c & 0xf8) == 0xf0) {
				vc->vc_utf_count = 3;
				vc->vc_utf_char = (c & 0x07);
			    } else if ((c & 0xfc) == 0xf8) {
				vc->vc_utf_count = 4;
				vc->vc_utf_char = (c & 0x03);
			    } else if ((c & 0xfe) == 0xfc) {
				vc->vc_utf_count = 5;
				vc->vc_utf_char = (c & 0x01);
			    } else {
				/* 254 and 255 are invalid */
				c = 0xfffd;
			    }
			    if (vc->vc_utf_count) {
				/* Still need some bytes */
				continue;
			    }
			}
			/* Nothing to do if an ASCII byte was received */
		    }
		    /* End of UTF-8 decoding. */
		    /* c is the received character, or U+FFFD for invalid sequences. */
		    /* Replace invalid Unicode code points with U+FFFD too */
		    if ((c >= 0xd800 && c <= 0xdfff) || c == 0xfffe || c == 0xffff)
			c = 0xfffd;
		    tc = c;
		} else {	/* no utf or alternate charset mode */
		    tc = FUNC22(vc, c);
		}

		param.c = tc;
		if (FUNC0(&vt_notifier_list, VT_PREWRITE,
					&param) == NOTIFY_STOP)
			continue;

                /* If the original code was a control character we
                 * only allow a glyph to be displayed if the code is
                 * not normally used (such as for cursor movement) or
                 * if the disp_ctrl mode has been explicitly enabled.
                 * Certain characters (as given by the CTRL_ALWAYS
                 * bitmap) are always displayed as control characters,
                 * as the console would be pretty useless without
                 * them; to display an arbitrary font position use the
                 * direct-to-font zone in UTF-8 mode.
                 */
                ok = tc && (c >= 32 ||
			    !(vc->vc_disp_ctrl ? (CTRL_ALWAYS >> c) & 1 :
				  vc->vc_utf || ((CTRL_ACTION >> c) & 1)))
			&& (c != 127 || vc->vc_disp_ctrl)
			&& (c != 128+27);

		if (vc->vc_state == ESnormal && ok) {
			if (vc->vc_utf && !vc->vc_disp_ctrl) {
				if (FUNC13(c))
					width = 2;
			}
			/* Now try to find out how to display it */
			tc = FUNC7(vc, tc);
			if (tc & ~charmask) {
				if (tc == -1 || tc == -2) {
				    continue; /* nothing to display */
				}
				/* Glyph not found */
				if ((!(vc->vc_utf && !vc->vc_disp_ctrl) || c < 128) && !(c & ~charmask)) {
				    /* In legacy mode use the glyph we get by a 1:1 mapping.
				       This would make absolutely no sense with Unicode in mind,
				       but do this for ASCII characters since a font may lack
				       Unicode mapping info and we don't want to end up with
				       having question marks only. */
				    tc = c;
				} else {
				    /* Display U+FFFD. If it's not found, display an inverse question mark. */
				    tc = FUNC7(vc, 0xfffd);
				    if (tc < 0) {
					inverse = 1;
					tc = FUNC7(vc, '?');
					if (tc < 0) tc = '?';
				    }
				}
			}

			if (!inverse) {
				vc_attr = vc->vc_attr;
			} else {
				/* invert vc_attr */
				if (!vc->vc_can_do_color) {
					vc_attr = (vc->vc_attr) ^ 0x08;
				} else if (vc->vc_hi_font_mask == 0x100) {
					vc_attr = ((vc->vc_attr) & 0x11) | (((vc->vc_attr) & 0xe0) >> 4) | (((vc->vc_attr) & 0x0e) << 4);
				} else {
					vc_attr = ((vc->vc_attr) & 0x88) | (((vc->vc_attr) & 0x70) >> 4) | (((vc->vc_attr) & 0x07) << 4);
				}
				FUNC1(vc, draw_from, draw_to, &draw_x);
			}

			next_c = c;
			while (1) {
				if (vc->vc_need_wrap || vc->vc_decim)
					FUNC1(vc, draw_from, draw_to,
							&draw_x);
				if (vc->vc_need_wrap) {
					FUNC8(vc);
					FUNC14(vc);
				}
				if (vc->vc_decim)
					FUNC12(vc, 1);
				FUNC24(vc, next_c);
				FUNC20(himask ?
					     ((vc_attr << 8) & ~himask) + ((tc & 0x100) ? himask : 0) + (tc & 0xff) :
					     (vc_attr << 8) + tc,
					   (u16 *) vc->vc_pos);
				if (FUNC3(vc) && draw_x < 0) {
					draw_x = vc->vc_x;
					draw_from = vc->vc_pos;
				}
				if (vc->vc_x == vc->vc_cols - 1) {
					vc->vc_need_wrap = vc->vc_decawm;
					draw_to = vc->vc_pos + 2;
				} else {
					vc->vc_x++;
					draw_to = (vc->vc_pos += 2);
				}

				if (!--width) break;

				tc = FUNC7(vc, ' '); /* A space is printed in the second column */
				if (tc < 0) tc = ' ';
				next_c = ' ';
			}
			FUNC17(vc, c);

			if (inverse)
				FUNC1(vc, draw_from, draw_to, &draw_x);

			if (rescan) {
				rescan = 0;
				inverse = 0;
				width = 1;
				c = orig;
				goto rescan_last_byte;
			}
			continue;
		}
		FUNC1(vc, draw_from, draw_to, &draw_x);
		FUNC9(tty, vc, orig);
	}
	FUNC1(vc, draw_from, draw_to, &draw_x);
	FUNC23(vc);
	FUNC4();
	FUNC16(vc);
	FUNC6();
	return n;
}