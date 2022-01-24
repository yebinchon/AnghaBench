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
struct neofb_par {int /*<<< orphan*/  wc_cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/ * screen_base; struct neofb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fb_info *info)
{
	struct neofb_par *par = info->par;

	FUNC0("neo_unmap_video");

	FUNC1(par->wc_cookie);
	FUNC2(info->screen_base);
	info->screen_base = NULL;

	FUNC3(info->fix.smem_start,
			   info->fix.smem_len);
}