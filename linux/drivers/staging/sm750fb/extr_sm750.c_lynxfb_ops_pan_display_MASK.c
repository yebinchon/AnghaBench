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
struct lynxfb_crtc {int dummy; } ;
struct lynxfb_par {struct lynxfb_crtc crtc; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct lynxfb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct lynxfb_crtc*,struct fb_var_screeninfo*,struct fb_info*) ; 

__attribute__((used)) static int FUNC1(struct fb_var_screeninfo *var,
				  struct fb_info *info)
{
	struct lynxfb_par *par;
	struct lynxfb_crtc *crtc;

	if (!info)
		return -EINVAL;

	par = info->par;
	crtc = &par->crtc;
	return FUNC0(crtc, var, info);
}