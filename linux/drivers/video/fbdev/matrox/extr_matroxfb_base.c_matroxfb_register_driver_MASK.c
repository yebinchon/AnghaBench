#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct matroxfb_driver {void* (* probe ) (struct matrox_fb_info*) ;int /*<<< orphan*/  node; } ;
struct TYPE_4__ {TYPE_2__* next; } ;
struct matrox_fb_info {size_t drivers_count; struct matroxfb_driver** drivers; void** drivers_data; TYPE_1__ next_fb; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;

/* Variables and functions */
 size_t MATROXFB_MAX_FB_DRIVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  matroxfb_driver_list ; 
 struct matrox_fb_info* FUNC1 (TYPE_2__*) ; 
 TYPE_2__ matroxfb_list ; 
 void* FUNC2 (struct matrox_fb_info*) ; 

int FUNC3(struct matroxfb_driver* drv) {
	struct matrox_fb_info* minfo;

	FUNC0(&drv->node, &matroxfb_driver_list);
	for (minfo = FUNC1(matroxfb_list.next);
	     minfo != FUNC1(&matroxfb_list);
	     minfo = FUNC1(minfo->next_fb.next)) {
		void* p;

		if (minfo->drivers_count == MATROXFB_MAX_FB_DRIVERS)
			continue;
		p = drv->probe(minfo);
		if (p) {
			minfo->drivers_data[minfo->drivers_count] = p;
			minfo->drivers[minfo->drivers_count++] = drv;
		}
	}
	return 0;
}