#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  count; int /*<<< orphan*/  pan_offset; scalar_t__ pan_display; } ;
struct intelfb_info {int /*<<< orphan*/  int_lock; TYPE_3__ vsync; TYPE_2__* info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int vmode; } ;
struct TYPE_5__ {TYPE_1__ var; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSPABASE ; 
 int FB_VMODE_INTERLACED ; 
 int /*<<< orphan*/  IIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIPEASTAT ; 
 int /*<<< orphan*/  PIPE_A_EVENT_INTERRUPT ; 
 int /*<<< orphan*/  VSYNC_PIPE_A_INTERRUPT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	u16 tmp;
	struct intelfb_info *dinfo = dev_id;

	FUNC5(&dinfo->int_lock);

	tmp = FUNC1(IIR);
	if (dinfo->info->var.vmode & FB_VMODE_INTERLACED)
		tmp &= PIPE_A_EVENT_INTERRUPT;
	else
		tmp &= VSYNC_PIPE_A_INTERRUPT; /* non-interlaced */

	if (tmp == 0) {
		FUNC6(&dinfo->int_lock);
		return FUNC2(0); /* not us */
	}

	/* clear status bits 0-15 ASAP and don't touch bits 16-31 */
	FUNC3(PIPEASTAT, FUNC0(PIPEASTAT));

	FUNC4(IIR, tmp);
	if (dinfo->vsync.pan_display) {
		dinfo->vsync.pan_display = 0;
		FUNC3(DSPABASE, dinfo->vsync.pan_offset);
	}

	dinfo->vsync.count++;
	FUNC7(&dinfo->vsync.wait);

	FUNC6(&dinfo->int_lock);

	return FUNC2(1);
}