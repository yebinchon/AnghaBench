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
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  physical; scalar_t__ virtual; } ;
struct gtt_data {scalar_t__ i810_fb_memory; scalar_t__ i810_cursor_memory; } ;
struct i810fb_par {int res_flags; int /*<<< orphan*/  mmio_start_phys; TYPE_1__ aperture; int /*<<< orphan*/  edid; scalar_t__ mmio_start_virtual; struct gtt_data i810_gtt; int /*<<< orphan*/  wc_cookie; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int FRAMEBUFFER_REQ ; 
 int MMIO_REQ ; 
 int /*<<< orphan*/  MMIO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct i810fb_par*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fb_info *info, 
				    struct i810fb_par *par)
{
	struct gtt_data *gtt = &par->i810_gtt;
	FUNC1(par->wc_cookie);

	FUNC3(par);

	if (par->i810_gtt.i810_cursor_memory)
		FUNC0(gtt->i810_cursor_memory);
	if (par->i810_gtt.i810_fb_memory)
		FUNC0(gtt->i810_fb_memory);

	if (par->mmio_start_virtual)
		FUNC4(par->mmio_start_virtual);
	if (par->aperture.virtual)
		FUNC4(par->aperture.virtual);
	FUNC5(par->edid);
	if (par->res_flags & FRAMEBUFFER_REQ)
		FUNC6(par->aperture.physical,
				   par->aperture.size);
	if (par->res_flags & MMIO_REQ)
		FUNC6(par->mmio_start_phys, MMIO_SIZE);

	FUNC2(info);

}