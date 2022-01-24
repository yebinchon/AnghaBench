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
struct omap_overlay_manager {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_overlay_manager*) ; 
 int FUNC1 () ; 
 struct omap_overlay_manager* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	const int num_mgrs = FUNC1();
	struct omap_overlay_manager *mgr;
	int i;

	for (i = 0; i < num_mgrs; ++i) {
		mgr = FUNC2(i);
		FUNC0(mgr);
	}
}