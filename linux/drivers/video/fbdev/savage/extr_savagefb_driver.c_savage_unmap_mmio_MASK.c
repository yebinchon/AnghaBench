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
struct TYPE_2__ {int /*<<< orphan*/ * vbase; } ;
struct savagefb_par {TYPE_1__ mmio; } ;
struct fb_info {struct savagefb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct savagefb_par*) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	struct savagefb_par *par = info->par;
	FUNC0("savage_unmap_mmio");

	FUNC2(par);

	if (par->mmio.vbase) {
		FUNC1(par->mmio.vbase);
		par->mmio.vbase = NULL;
	}
}