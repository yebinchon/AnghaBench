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
struct fb_info {int node; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_MAJOR ; 
 int FB_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fb_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 

void FUNC5(struct fb_info *fb_info)
{
	int i;

	i = fb_info->node;
	if (FUNC1(i < 0 || i >= FB_MAX || registered_fb[i] != fb_info))
		return;

	if (!fb_info->dev)
		return;

	FUNC2(fb_class, FUNC0(FB_MAJOR, i));

	FUNC3(fb_info->dev);

	FUNC4(fb_info);

	fb_info->dev = NULL;
}