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
struct platform_device {int dummy; } ;
struct omap_overlay {char* name; int /*<<< orphan*/  id; int /*<<< orphan*/  supported_modes; int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OMAP_DSS_GFX ; 
 int /*<<< orphan*/  OMAP_DSS_VIDEO1 ; 
 int /*<<< orphan*/  OMAP_DSS_VIDEO2 ; 
 int /*<<< orphan*/  OMAP_DSS_VIDEO3 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct omap_overlay*,struct platform_device*) ; 
 struct omap_overlay* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int num_overlays ; 
 struct omap_overlay* overlays ; 

void FUNC7(struct platform_device *pdev)
{
	int i, r;

	num_overlays = FUNC2();

	overlays = FUNC6(num_overlays, sizeof(struct omap_overlay),
			   GFP_KERNEL);

	FUNC0(overlays == NULL);

	for (i = 0; i < num_overlays; ++i) {
		struct omap_overlay *ovl = &overlays[i];

		switch (i) {
		case 0:
			ovl->name = "gfx";
			ovl->id = OMAP_DSS_GFX;
			break;
		case 1:
			ovl->name = "vid1";
			ovl->id = OMAP_DSS_VIDEO1;
			break;
		case 2:
			ovl->name = "vid2";
			ovl->id = OMAP_DSS_VIDEO2;
			break;
		case 3:
			ovl->name = "vid3";
			ovl->id = OMAP_DSS_VIDEO3;
			break;
		}

		ovl->caps = FUNC3(ovl->id);
		ovl->supported_modes =
			FUNC4(ovl->id);

		r = FUNC5(ovl, pdev);
		if (r)
			FUNC1("failed to create sysfs file\n");
	}
}