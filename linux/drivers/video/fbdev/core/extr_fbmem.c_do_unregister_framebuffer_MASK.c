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
struct TYPE_2__ {int flags; scalar_t__ addr; } ;
struct fb_info {size_t node; int /*<<< orphan*/  modelist; TYPE_1__ pixmap; } ;
struct fb_event {struct fb_info* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_EVENT_FB_UNREGISTERED ; 
 int FB_PIXMAP_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fb_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  num_registered_fb ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/ ** registered_fb ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 

__attribute__((used)) static void FUNC9(struct fb_info *fb_info)
{
	FUNC8(fb_info);
	if (fb_info->pixmap.addr &&
	    (fb_info->pixmap.flags & FB_PIXMAP_DEFAULT))
		FUNC6(fb_info->pixmap.addr);
	FUNC3(&fb_info->modelist);
	registered_fb[fb_info->node] = NULL;
	num_registered_fb--;
	FUNC2(fb_info);
#ifdef CONFIG_GUMSTIX_AM200EPD
	{
		struct fb_event event;
		event.info = fb_info;
		fb_notifier_call_chain(FB_EVENT_FB_UNREGISTERED, &event);
	}
#endif
	FUNC0();
	FUNC5(fb_info);
	FUNC1();

	/* this may free fb info */
	FUNC7(fb_info);
}