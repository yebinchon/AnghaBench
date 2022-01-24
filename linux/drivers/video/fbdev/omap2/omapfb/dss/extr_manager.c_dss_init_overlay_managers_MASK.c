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
struct omap_overlay_manager {char* name; int /*<<< orphan*/  overlays; int /*<<< orphan*/  id; int /*<<< orphan*/  supported_outputs; int /*<<< orphan*/  supported_displays; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_DIGIT ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD2 ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD3 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct omap_overlay_manager* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct omap_overlay_manager* managers ; 
 int num_managers ; 

int FUNC6(void)
{
	int i;

	num_managers = FUNC2();

	managers = FUNC5(num_managers, sizeof(struct omap_overlay_manager),
			   GFP_KERNEL);

	FUNC0(managers == NULL);

	for (i = 0; i < num_managers; ++i) {
		struct omap_overlay_manager *mgr = &managers[i];

		switch (i) {
		case 0:
			mgr->name = "lcd";
			mgr->id = OMAP_DSS_CHANNEL_LCD;
			break;
		case 1:
			mgr->name = "tv";
			mgr->id = OMAP_DSS_CHANNEL_DIGIT;
			break;
		case 2:
			mgr->name = "lcd2";
			mgr->id = OMAP_DSS_CHANNEL_LCD2;
			break;
		case 3:
			mgr->name = "lcd3";
			mgr->id = OMAP_DSS_CHANNEL_LCD3;
			break;
		}

		mgr->supported_displays =
			FUNC3(mgr->id);
		mgr->supported_outputs =
			FUNC4(mgr->id);

		FUNC1(&mgr->overlays);
	}

	return 0;
}