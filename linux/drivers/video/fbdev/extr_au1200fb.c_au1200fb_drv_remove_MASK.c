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
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct fb_info {int /*<<< orphan*/  pseudo_palette; TYPE_1__ cmap; } ;
struct au1200fb_platdata {int dummy; } ;

/* Variables and functions */
 struct fb_info** _au1200fb_infos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct au1200fb_platdata*) ; 
 int device_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct au1200fb_platdata* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct au1200fb_platdata *pd = FUNC5(dev);
	struct fb_info *fbi;
	int plane;

	/* Turn off the panel */
	FUNC0(NULL, pd);

	for (plane = 0; plane < device_count; ++plane)	{
		fbi = _au1200fb_infos[plane];

		/* Clean up all probe data */
		FUNC7(fbi);
		if (fbi->cmap.len != 0)
			FUNC1(&fbi->cmap);
		FUNC4(fbi->pseudo_palette);

		FUNC2(fbi);
		_au1200fb_infos[plane] = NULL;
	}

	FUNC3(FUNC6(dev, 0), (void *)dev);

	return 0;
}