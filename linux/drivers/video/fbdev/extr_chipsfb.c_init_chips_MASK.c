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
struct TYPE_2__ {unsigned long smem_start; } ;
struct fb_info {int /*<<< orphan*/  cmap; int /*<<< orphan*/  flags; int /*<<< orphan*/ * fbops; int /*<<< orphan*/  var; TYPE_1__ fix; int /*<<< orphan*/  screen_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ chipsfb_fix ; 
 int /*<<< orphan*/  chipsfb_ops ; 
 int /*<<< orphan*/  chipsfb_var ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct fb_info *p, unsigned long addr)
{
	FUNC2(p->screen_base, 0, 0x100000);

	p->fix = chipsfb_fix;
	p->fix.smem_start = addr;

	p->var = chipsfb_var;

	p->fbops = &chipsfb_ops;
	p->flags = FBINFO_DEFAULT;

	FUNC1(&p->cmap, 256, 0);

	FUNC0();
}