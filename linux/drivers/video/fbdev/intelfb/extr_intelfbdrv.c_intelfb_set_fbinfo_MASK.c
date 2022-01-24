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
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  physical; } ;
struct intelfb_info {int /*<<< orphan*/  mmio_base_phys; TYPE_2__ fb; int /*<<< orphan*/  name; int /*<<< orphan*/  pseudo_palette; struct fb_info* info; } ;
struct TYPE_6__ {int xpanstep; int ypanstep; int /*<<< orphan*/  accel; int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  mmio_start; scalar_t__ ywrapstep; scalar_t__ type_aux; int /*<<< orphan*/  type; int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int size; int buf_align; int access_align; int scan_align; int /*<<< orphan*/  flags; } ;
struct fb_info {int /*<<< orphan*/  var; TYPE_3__ fix; TYPE_1__ pixmap; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/ * fbops; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FBINFO_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FB_ACCEL_I830 ; 
 int /*<<< orphan*/  FB_PIXMAP_SYSTEM ; 
 int /*<<< orphan*/  FB_TYPE_PACKED_PIXELS ; 
 int /*<<< orphan*/  INTEL_REG_SIZE ; 
 int /*<<< orphan*/  intel_fb_ops ; 
 scalar_t__ FUNC1 (struct intelfb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intelfb_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct intelfb_info *dinfo)
{
	struct fb_info *info = dinfo->info;

	FUNC0("intelfb_set_fbinfo\n");

	info->flags = FBINFO_FLAG_DEFAULT;
	info->fbops = &intel_fb_ops;
	info->pseudo_palette = dinfo->pseudo_palette;

	info->pixmap.size = 64*1024;
	info->pixmap.buf_align = 8;
	info->pixmap.access_align = 32;
	info->pixmap.flags = FB_PIXMAP_SYSTEM;

	if (FUNC1(dinfo))
		return 1;

	info->pixmap.scan_align = 1;
	FUNC2(info->fix.id, dinfo->name);
	info->fix.smem_start = dinfo->fb.physical;
	info->fix.smem_len = dinfo->fb.size;
	info->fix.type = FB_TYPE_PACKED_PIXELS;
	info->fix.type_aux = 0;
	info->fix.xpanstep = 8;
	info->fix.ypanstep = 1;
	info->fix.ywrapstep = 0;
	info->fix.mmio_start = dinfo->mmio_base_phys;
	info->fix.mmio_len = INTEL_REG_SIZE;
	info->fix.accel = FB_ACCEL_I830;
	FUNC3(dinfo, &info->var);

	return 0;
}