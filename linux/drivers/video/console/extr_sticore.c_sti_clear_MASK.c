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
struct sti_struct {int font_width; int font_height; int /*<<< orphan*/  lock; int /*<<< orphan*/  glob_cfg; int /*<<< orphan*/  block_move; TYPE_1__* sti_data; } ;
struct sti_blkmv_outptr {int dummy; } ;
struct sti_blkmv_inptr {int src_x; int src_y; int dest_x; int dest_y; int width; int height; int /*<<< orphan*/  bg_color; int /*<<< orphan*/  fg_color; } ;
typedef  int s32 ;
struct TYPE_2__ {struct sti_blkmv_outptr blkmv_outptr; struct sti_blkmv_inptr blkmv_inptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  clear_blkmv_flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct sti_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sti_blkmv_inptr*,struct sti_blkmv_outptr*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct sti_struct *sti, int src_y, int src_x,
	  int height, int width, int c)
{
	struct sti_blkmv_inptr *inptr = &sti->sti_data->blkmv_inptr;
	struct sti_blkmv_inptr inptr_default = {
		.fg_color	= FUNC1(sti, c),
		.bg_color	= FUNC0(sti, c),
		.src_x		= src_x * sti->font_width,
		.src_y		= src_y * sti->font_height,
		.dest_x		= src_x * sti->font_width,
		.dest_y		= src_y * sti->font_height,
		.width		= width * sti->font_width,
		.height		= height* sti->font_height,
	};
	struct sti_blkmv_outptr *outptr = &sti->sti_data->blkmv_outptr;
	s32 ret;
	unsigned long flags;

	do {
		FUNC2(&sti->lock, flags);
		*inptr = inptr_default;
		ret = FUNC4(sti, sti->block_move, &clear_blkmv_flags,
			inptr, outptr, sti->glob_cfg);
		FUNC3(&sti->lock, flags);
	} while (ret == 1);
}