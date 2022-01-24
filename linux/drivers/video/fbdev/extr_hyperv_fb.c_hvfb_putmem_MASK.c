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
struct hvfb_par {TYPE_1__* mem; } ;
struct fb_info {int /*<<< orphan*/  screen_base; struct hvfb_par* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  screen_fb_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info)
{
	struct hvfb_par *par = info->par;

	FUNC0(info->screen_base);
	FUNC1(par->mem->start, screen_fb_size);
	par->mem = NULL;
}