#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vc_data {size_t vc_num; } ;
struct fbcon_ops {int /*<<< orphan*/ * p; } ;
struct fb_info {int /*<<< orphan*/  flags; struct fbcon_ops* fbcon_par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_MISC_TILEBLITTING ; 
 int /*<<< orphan*/ * fb_display ; 
 int /*<<< orphan*/  FUNC0 (struct fbcon_ops*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, struct fb_info *info)
{
	struct fbcon_ops *ops = info->fbcon_par;

	info->flags &= ~FBINFO_MISC_TILEBLITTING;
	ops->p = &fb_display[vc->vc_num];
	FUNC1(info);
	FUNC0(ops);
}