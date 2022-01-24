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
struct sti_struct {int font_width; int font_height; int /*<<< orphan*/  lock; int /*<<< orphan*/  glob_cfg; int /*<<< orphan*/  font_unpmv; TYPE_2__* sti_data; TYPE_1__* font; } ;
struct sti_font_outptr {int dummy; } ;
struct sti_font_inptr {int dest_x; int dest_y; int /*<<< orphan*/  bg_color; int /*<<< orphan*/  fg_color; int /*<<< orphan*/  index; int /*<<< orphan*/  font_start_addr; } ;
typedef  int s32 ;
struct TYPE_4__ {struct sti_font_outptr font_outptr; struct sti_font_inptr font_inptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  default_font_flags ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct sti_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sti_font_inptr*,struct sti_font_outptr*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct sti_struct *sti, int c, int y, int x)
{
	struct sti_font_inptr *inptr = &sti->sti_data->font_inptr;
	struct sti_font_inptr inptr_default = {
		.font_start_addr= FUNC0(sti->font->raw),
		.index		= FUNC3(sti, c),
		.fg_color	= FUNC2(sti, c),
		.bg_color	= FUNC1(sti, c),
		.dest_x		= x * sti->font_width,
		.dest_y		= y * sti->font_height,
	};
	struct sti_font_outptr *outptr = &sti->sti_data->font_outptr;
	s32 ret;
	unsigned long flags;

	do {
		FUNC4(&sti->lock, flags);
		*inptr = inptr_default;
		ret = FUNC6(sti, sti->font_unpmv, &default_font_flags,
			inptr, outptr, sti->glob_cfg);
		FUNC5(&sti->lock, flags);
	} while (ret == 1);
}