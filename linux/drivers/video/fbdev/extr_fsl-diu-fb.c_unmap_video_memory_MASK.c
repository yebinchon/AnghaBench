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
struct TYPE_2__ {size_t smem_len; scalar_t__ smem_start; } ;
struct fb_info {int /*<<< orphan*/  mm_lock; TYPE_1__ fix; int /*<<< orphan*/ * screen_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	void *p = info->screen_base;
	size_t l = info->fix.smem_len;

	FUNC1(&info->mm_lock);
	info->screen_base = NULL;
	info->fix.smem_start = 0;
	info->fix.smem_len = 0;
	FUNC2(&info->mm_lock);

	if (p)
		FUNC0(p, l);
}