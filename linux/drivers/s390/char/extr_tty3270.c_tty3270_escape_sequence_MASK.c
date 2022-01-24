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
struct tty3270 {int esc_state; int saved_cx; int cx; int saved_cy; int cy; int* esc_par; int esc_npar; int esc_ques; int /*<<< orphan*/  saved_f_color; int /*<<< orphan*/  f_color; int /*<<< orphan*/  saved_highlight; int /*<<< orphan*/  highlight; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int ESCAPE_NPAR ; 
 int /*<<< orphan*/  TAC_RESET ; 
 int /*<<< orphan*/  TAX_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty3270*,int) ; 
 int FUNC9 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty3270*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tty3270*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty3270*) ; 

__attribute__((used)) static void
FUNC15(struct tty3270 *tp, char ch)
{
	enum { ESnormal, ESesc, ESsquare, ESgetpars };

	if (tp->esc_state == ESnormal) {
		if (ch == 0x1b)
			/* Starting new escape sequence. */
			tp->esc_state = ESesc;
		return;
	}
	if (tp->esc_state == ESesc) {
		tp->esc_state = ESnormal;
		switch (ch) {
		case '[':
			tp->esc_state = ESsquare;
			break;
		case 'E':
			FUNC4(tp);
			FUNC12(tp);
			break;
		case 'M':
			FUNC13(tp);
			break;
		case 'D':
			FUNC12(tp);
			break;
		case 'Z':		/* Respond ID. */
			FUNC0(&tp->port, "\033[?6c");
			break;
		case '7':		/* Save cursor position. */
			tp->saved_cx = tp->cx;
			tp->saved_cy = tp->cy;
			tp->saved_highlight = tp->highlight;
			tp->saved_f_color = tp->f_color;
			break;
		case '8':		/* Restore cursor position. */
			FUNC3(tp, tp->cy);
			FUNC10(tp, tp->saved_cx, tp->saved_cy);
			tp->highlight = tp->saved_highlight;
			tp->f_color = tp->saved_f_color;
			break;
		case 'c':		/* Reset terminal. */
			tp->cx = tp->saved_cx = 0;
			tp->cy = tp->saved_cy = 0;
			tp->highlight = tp->saved_highlight = TAX_RESET;
			tp->f_color = tp->saved_f_color = TAC_RESET;
			FUNC7(tp, 2);
			break;
		}
		return;
	}
	if (tp->esc_state == ESsquare) {
		tp->esc_state = ESgetpars;
		FUNC1(tp->esc_par, 0, sizeof(tp->esc_par));
		tp->esc_npar = 0;
		tp->esc_ques = (ch == '?');
		if (tp->esc_ques)
			return;
	}
	if (tp->esc_state == ESgetpars) {
		if (ch == ';' && tp->esc_npar < ESCAPE_NPAR - 1) {
			tp->esc_npar++;
			return;
		}
		if (ch >= '0' && ch <= '9') {
			tp->esc_par[tp->esc_npar] *= 10;
			tp->esc_par[tp->esc_npar] += ch - '0';
			return;
		}
	}
	tp->esc_state = ESnormal;
	if (ch == 'n' && !tp->esc_ques) {
		if (tp->esc_par[0] == 5)		/* Status report. */
			FUNC0(&tp->port, "\033[0n");
		else if (tp->esc_par[0] == 6) {	/* Cursor report. */
			char buf[40];
			FUNC2(buf, "\033[%d;%dR", tp->cy + 1, tp->cx + 1);
			FUNC0(&tp->port, buf);
		}
		return;
	}
	if (tp->esc_ques)
		return;
	switch (ch) {
	case 'm':
		FUNC14(tp);
		break;
	case 'H':	/* Set cursor position. */
	case 'f':
		FUNC10(tp, FUNC9(tp, 1) - 1,
				FUNC9(tp, 0) - 1);
		break;
	case 'd':	/* Set y position. */
		FUNC10(tp, tp->cx, FUNC9(tp, 0) - 1);
		break;
	case 'A':	/* Cursor up. */
	case 'F':
		FUNC10(tp, tp->cx, tp->cy - FUNC9(tp, 0));
		break;
	case 'B':	/* Cursor down. */
	case 'e':
	case 'E':
		FUNC10(tp, tp->cx, tp->cy + FUNC9(tp, 0));
		break;
	case 'C':	/* Cursor forward. */
	case 'a':
		FUNC10(tp, tp->cx + FUNC9(tp, 0), tp->cy);
		break;
	case 'D':	/* Cursor backward. */
		FUNC10(tp, tp->cx - FUNC9(tp, 0), tp->cy);
		break;
	case 'G':	/* Set x position. */
	case '`':
		FUNC10(tp, FUNC9(tp, 0), tp->cy);
		break;
	case 'X':	/* Erase Characters. */
		FUNC6(tp, FUNC9(tp, 0));
		break;
	case 'J':	/* Erase display. */
		FUNC7(tp, tp->esc_par[0]);
		break;
	case 'K':	/* Erase line. */
		FUNC8(tp, tp->esc_par[0]);
		break;
	case 'P':	/* Delete characters. */
		FUNC5(tp, FUNC9(tp, 0));
		break;
	case '@':	/* Insert characters. */
		FUNC11(tp, FUNC9(tp, 0));
		break;
	case 's':	/* Save cursor position. */
		tp->saved_cx = tp->cx;
		tp->saved_cy = tp->cy;
		tp->saved_highlight = tp->highlight;
		tp->saved_f_color = tp->f_color;
		break;
	case 'u':	/* Restore cursor position. */
		FUNC3(tp, tp->cy);
		FUNC10(tp, tp->saved_cx, tp->saved_cy);
		tp->highlight = tp->saved_highlight;
		tp->f_color = tp->saved_f_color;
		break;
	}
}