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
struct fb_info {int node; } ;

/* Variables and functions */
 int FB_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 

__attribute__((used)) static void FUNC6(struct fb_info *fb_info)
{
	int i = fb_info->node;

	if (FUNC0(i < 0 || i >= FB_MAX || registered_fb[i] != fb_info))
		return;

	FUNC1();
	FUNC4(fb_info);
	FUNC3(fb_info);
	FUNC5(fb_info);
	FUNC2();
}