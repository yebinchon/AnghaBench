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
struct TYPE_2__ {int /*<<< orphan*/  smem_start; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ external_addr ; 
 int /*<<< orphan*/  external_screen_base ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	FUNC1(&info->var, info);
	FUNC0(&info->fix, info);

	/* Note: smem_start derives from phys_screen_base, not screen_base! */
	info->screen_base = (external_addr ? external_screen_base :
				FUNC2(info->fix.smem_start));
}