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
struct imstt_par {int dummy; } ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {int pixclock; int /*<<< orphan*/  bits_per_pixel; TYPE_1__ green; int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct fb_info {TYPE_2__ var; struct imstt_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct imstt_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct imstt_par*) ; 
 int /*<<< orphan*/  FUNC2 (struct imstt_par*) ; 
 int /*<<< orphan*/  FUNC3 (struct imstt_par*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct fb_info *info) 
{
	struct imstt_par *par = info->par;
		
	if (!FUNC0(par, info->var.xres, info->var.yres))
		return -EINVAL;

	if (info->var.green.length == 6)
		FUNC3(par);
	else
		FUNC2(par);
	FUNC4(info, info->var.bits_per_pixel);
	info->var.pixclock = 1000000 / FUNC1(par);
	return 0;
}