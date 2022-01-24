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
struct omap_overlay {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_overlay*) ; 
 int num_overlays ; 
 struct omap_overlay* overlays ; 

void FUNC2(struct platform_device *pdev)
{
	int i;

	for (i = 0; i < num_overlays; ++i) {
		struct omap_overlay *ovl = &overlays[i];
		FUNC0(ovl);
	}

	FUNC1(overlays);
	overlays = NULL;
	num_overlays = 0;
}