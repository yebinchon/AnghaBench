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
struct vc_data {int vc_can_do_color; int vc_cols; int vc_rows; } ;
struct sti_struct {int font_width; int font_height; } ;

/* Variables and functions */
 int FUNC0 (struct sti_struct*) ; 
 int FUNC1 (struct sti_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct sti_struct* sticon_sti ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,int,int) ; 

__attribute__((used)) static void FUNC4(struct vc_data *c, int init)
{
    struct sti_struct *sti = sticon_sti;
    int vc_cols, vc_rows;

    FUNC2(sti, 0, 0, FUNC1(sti), FUNC0(sti), 0);
    vc_cols = FUNC0(sti) / sti->font_width;
    vc_rows = FUNC1(sti) / sti->font_height;
    c->vc_can_do_color = 1;
    
    if (init) {
	c->vc_cols = vc_cols;
	c->vc_rows = vc_rows;
    } else {
	/* vc_rows = (c->vc_rows > vc_rows) ? vc_rows : c->vc_rows; */
	/* vc_cols = (c->vc_cols > vc_cols) ? vc_cols : c->vc_cols; */
	FUNC3(c, vc_cols, vc_rows);
/*	vc_resize_con(vc_rows, vc_cols, c->vc_num); */
    }
}