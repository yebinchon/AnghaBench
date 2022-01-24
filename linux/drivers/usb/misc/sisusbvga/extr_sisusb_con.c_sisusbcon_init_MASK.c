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
struct TYPE_2__ {int height; } ;
struct vc_data {size_t vc_num; int vc_can_do_color; int vc_complement_mask; int vc_hi_font_mask; int vc_scan_lines; int vc_cols; int vc_rows; int /*<<< orphan*/ * vc_uni_pagedir_loc; TYPE_1__ vc_font; } ;
struct sisusb_usb_data {int haveconsole; int* havethisconsole; int current_font_height; int /*<<< orphan*/  lock; int /*<<< orphan*/  kref; scalar_t__ current_font_512; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct vc_data *c, int init)
{
	struct sisusb_usb_data *sisusb;
	int cols, rows;

	/* This is called by do_take_over_console(),
	 * ie by us/under our control. It is
	 * only called after text mode and fonts
	 * are set up/restored.
	 */

	sisusb = FUNC4(c->vc_num);
	if (!sisusb)
		return;

	FUNC2(&sisusb->lock);

	if (!FUNC5(sisusb)) {
		FUNC3(&sisusb->lock);
		return;
	}

	c->vc_can_do_color = 1;

	c->vc_complement_mask = 0x7700;

	c->vc_hi_font_mask = sisusb->current_font_512 ? 0x0800 : 0;

	sisusb->haveconsole = 1;

	sisusb->havethisconsole[c->vc_num] = 1;

	/* We only support 640x400 */
	c->vc_scan_lines = 400;

	c->vc_font.height = sisusb->current_font_height;

	/* We only support width = 8 */
	cols = 80;
	rows = c->vc_scan_lines / c->vc_font.height;

	/* Increment usage count for our sisusb.
	 * Doing so saves us from upping/downing
	 * the disconnect semaphore; we can't
	 * lose our sisusb until this is undone
	 * in con_deinit. For all other console
	 * interface functions, it suffices to
	 * use sisusb->lock and do a quick check
	 * of sisusb for device disconnection.
	 */
	FUNC1(&sisusb->kref);

	if (!*c->vc_uni_pagedir_loc)
		FUNC0(c);

	FUNC3(&sisusb->lock);

	if (init) {
		c->vc_cols = cols;
		c->vc_rows = rows;
	} else
		FUNC6(c, cols, rows);
}