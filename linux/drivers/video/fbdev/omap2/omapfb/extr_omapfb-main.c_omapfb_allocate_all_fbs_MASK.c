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
typedef  int /*<<< orphan*/  vram_sizes ;
typedef  int /*<<< orphan*/  vram_paddrs ;
struct omapfb_info {struct omapfb2_mem_region* region; } ;
struct omapfb2_mem_region {int /*<<< orphan*/  size; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  paddr; } ;
struct omapfb2_device {int num_fbs; int /*<<< orphan*/ * fbs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omapfb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ def_vram ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long**,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (scalar_t__,int,unsigned long*,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct omapfb2_device *fbdev)
{
	int i, r;
	unsigned long vram_sizes[10];
	unsigned long vram_paddrs[10];

	FUNC3(&vram_sizes, 0, sizeof(vram_sizes));
	FUNC3(&vram_paddrs, 0, sizeof(vram_paddrs));

	if (def_vram &&	FUNC5(def_vram, 10,
				vram_sizes, vram_paddrs)) {
		FUNC2(fbdev->dev, "failed to parse vram parameter\n");

		FUNC3(&vram_sizes, 0, sizeof(vram_sizes));
		FUNC3(&vram_paddrs, 0, sizeof(vram_paddrs));
	}

	for (i = 0; i < fbdev->num_fbs; i++) {
		/* allocate memory automatically only for fb0, or if
		 * excplicitly defined with vram or plat data option */
		if (i == 0 || vram_sizes[i] != 0) {
			r = FUNC4(fbdev->fbs[i],
					vram_sizes[i], vram_paddrs[i]);

			if (r)
				return r;
		}
	}

	for (i = 0; i < fbdev->num_fbs; i++) {
		struct omapfb_info *ofbi = FUNC1(fbdev->fbs[i]);
		struct omapfb2_mem_region *rg;
		rg = ofbi->region;

		FUNC0("region%d phys %08x virt %p size=%lu\n",
				i,
				rg->paddr,
				rg->vaddr,
				rg->size);
	}

	return 0;
}