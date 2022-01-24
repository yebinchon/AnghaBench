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
struct neofb_par {int /*<<< orphan*/ * mmio_vbase; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  mmio_start; } ;
struct fb_info {TYPE_1__ fix; struct neofb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	struct neofb_par *par = info->par;

	FUNC0("neo_unmap_mmio");

	FUNC1(par->mmio_vbase);
	par->mmio_vbase = NULL;

	FUNC2(info->fix.mmio_start,
			   info->fix.mmio_len);
}