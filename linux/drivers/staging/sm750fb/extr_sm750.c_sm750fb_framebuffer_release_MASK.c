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
struct sm750_dev {int fb_count; struct fb_info** fbinfo; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 

__attribute__((used)) static void FUNC2(struct sm750_dev *sm750_dev)
{
	struct fb_info *fb_info;

	while (sm750_dev->fb_count) {
		fb_info = sm750_dev->fbinfo[sm750_dev->fb_count - 1];
		FUNC1(fb_info);
		FUNC0(fb_info);
		sm750_dev->fb_count--;
	}
}