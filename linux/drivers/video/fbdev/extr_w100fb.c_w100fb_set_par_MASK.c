#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct w100fb_par {scalar_t__ xres; scalar_t__ yres; int extmem_active; TYPE_3__* mach; int /*<<< orphan*/  mode; } ;
struct TYPE_8__ {int line_length; int smem_len; scalar_t__ ywrapstep; scalar_t__ ypanstep; int /*<<< orphan*/  visual; } ;
struct TYPE_5__ {scalar_t__ xres; scalar_t__ yres; } ;
struct fb_info {int /*<<< orphan*/  mm_lock; TYPE_4__ fix; TYPE_1__ var; struct w100fb_par* par; } ;
struct TYPE_7__ {TYPE_2__* mem; } ;
struct TYPE_6__ {int size; } ;

/* Variables and functions */
 int BITS_PER_PIXEL ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int MEM_INT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct w100fb_par*) ; 
 int /*<<< orphan*/  FUNC3 (struct w100fb_par*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info)
{
	struct w100fb_par *par=info->par;

	if (par->xres != info->var.xres || par->yres != info->var.yres)	{
		par->xres = info->var.xres;
		par->yres = info->var.yres;
		par->mode = FUNC3(par, &par->xres, &par->yres, 0);

		info->fix.visual = FB_VISUAL_TRUECOLOR;
		info->fix.ypanstep = 0;
		info->fix.ywrapstep = 0;
		info->fix.line_length = par->xres * BITS_PER_PIXEL / 8;

		FUNC0(&info->mm_lock);
		if ((par->xres*par->yres*BITS_PER_PIXEL/8) > (MEM_INT_SIZE+1)) {
			par->extmem_active = 1;
			info->fix.smem_len = par->mach->mem->size+1;
		} else {
			par->extmem_active = 0;
			info->fix.smem_len = MEM_INT_SIZE+1;
		}
		FUNC1(&info->mm_lock);

		FUNC2(par);
	}
	return 0;
}