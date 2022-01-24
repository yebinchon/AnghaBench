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
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {TYPE_3__ cmap; } ;
struct clcd_fb {TYPE_1__* board; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; TYPE_2__ fb; } ;
struct amba_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* remove ) (struct clcd_fb*) ;} ;

/* Variables and functions */
 struct clcd_fb* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clcd_fb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct clcd_fb*) ; 
 int /*<<< orphan*/  FUNC8 (struct clcd_fb*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(struct amba_device *dev)
{
	struct clcd_fb *fb = FUNC0(dev);

	FUNC2(fb);
	FUNC9(&fb->fb);
	if (fb->fb.cmap.len)
		FUNC5(&fb->fb.cmap);
	FUNC6(fb->regs);
	FUNC4(fb->clk);
	FUNC3(fb->clk);

	fb->board->remove(fb);

	FUNC7(fb);

	FUNC1(dev);

	return 0;
}