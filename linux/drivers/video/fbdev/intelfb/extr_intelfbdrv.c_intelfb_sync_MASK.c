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
struct intelfb_info {scalar_t__ ring_lockup; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct intelfb_info* FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct intelfb_info*) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info)
{
        struct intelfb_info *dinfo = FUNC1(info);

#if VERBOSE > 0
	DBG_MSG("intelfb_sync\n");
#endif

	if (dinfo->ring_lockup)
		return 0;

	FUNC2(dinfo);
	return 0;
}