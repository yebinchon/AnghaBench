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
struct fb_info {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct fb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FB_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  registration_lock ; 

__attribute__((used)) static struct fb_info *FUNC4(unsigned int idx)
{
	struct fb_info *fb_info;

	if (idx >= FB_MAX)
		return FUNC0(-ENODEV);

	FUNC2(&registration_lock);
	fb_info = registered_fb[idx];
	if (fb_info)
		FUNC1(&fb_info->count);
	FUNC3(&registration_lock);

	return fb_info;
}