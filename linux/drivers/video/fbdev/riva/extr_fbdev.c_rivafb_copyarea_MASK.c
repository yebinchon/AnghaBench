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
struct TYPE_4__ {TYPE_1__* Blt; } ;
struct riva_par {TYPE_2__ riva; } ;
struct fb_info {int flags; struct riva_par* par; } ;
struct fb_copyarea {int sy; int sx; int dy; int dx; int height; int width; } ;
struct TYPE_3__ {int /*<<< orphan*/  WidthHeight; int /*<<< orphan*/  TopLeftDst; int /*<<< orphan*/  TopLeftSrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  Blt ; 
 int FBINFO_HWACCEL_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,struct fb_copyarea const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct fb_info *info, const struct fb_copyarea *region)
{
	struct riva_par *par = info->par;

	if ((info->flags & FBINFO_HWACCEL_DISABLED)) {
		FUNC2(info, region);
		return;
	}

	FUNC1(par->riva, Blt, 3);
	FUNC0(&par->riva.Blt->TopLeftSrc, 0,
		(region->sy << 16) | region->sx);
	FUNC0(&par->riva.Blt->TopLeftDst, 0,
		(region->dy << 16) | region->dx);
	FUNC3();
	FUNC0(&par->riva.Blt->WidthHeight, 0,
		(region->height << 16) | region->width);
	FUNC3();
}