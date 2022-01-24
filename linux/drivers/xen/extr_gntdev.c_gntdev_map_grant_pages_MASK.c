#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct gntdev_grant_map {int count; int flags; TYPE_2__* unmap_ops; int /*<<< orphan*/ * pages; scalar_t__ dma_vaddr; TYPE_3__* kmap_ops; TYPE_2__* kunmap_ops; TYPE_3__* map_ops; int /*<<< orphan*/  index; TYPE_1__* grants; } ;
struct TYPE_8__ {int handle; scalar_t__ status; } ;
struct TYPE_7__ {int handle; int /*<<< orphan*/  dev_bus_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  domid; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int GNTMAP_host_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ use_ptemod ; 

int FUNC10(struct gntdev_grant_map *map)
{
	int i, err = 0;

	if (!use_ptemod) {
		/* Note: it could already be mapped */
		if (map->map_ops[0].handle != -1)
			return 0;
		for (i = 0; i < map->count; i++) {
			unsigned long addr = (unsigned long)
				FUNC8(FUNC6(map->pages[i]));
			FUNC4(&map->map_ops[i], addr, map->flags,
				map->grants[i].ref,
				map->grants[i].domid);
			FUNC5(&map->unmap_ops[i], addr,
				map->flags, -1 /* handle */);
		}
	} else {
		/*
		 * Setup the map_ops corresponding to the pte entries pointing
		 * to the kernel linear addresses of the struct pages.
		 * These ptes are completely different from the user ptes dealt
		 * with find_grant_ptes.
		 */
		for (i = 0; i < map->count; i++) {
			unsigned long address = (unsigned long)
				FUNC8(FUNC6(map->pages[i]));
			FUNC0(FUNC1(map->pages[i]));

			FUNC4(&map->kmap_ops[i], address,
				map->flags | GNTMAP_host_map,
				map->grants[i].ref,
				map->grants[i].domid);
			FUNC5(&map->kunmap_ops[i], address,
				map->flags | GNTMAP_host_map, -1);
		}
	}

	FUNC9("map %d+%d\n", map->index, map->count);
	err = FUNC3(map->map_ops, use_ptemod ? map->kmap_ops : NULL,
			map->pages, map->count);
	if (err)
		return err;

	for (i = 0; i < map->count; i++) {
		if (map->map_ops[i].status) {
			err = -EINVAL;
			continue;
		}

		map->unmap_ops[i].handle = map->map_ops[i].handle;
		if (use_ptemod)
			map->kunmap_ops[i].handle = map->kmap_ops[i].handle;
#ifdef CONFIG_XEN_GRANT_DMA_ALLOC
		else if (map->dma_vaddr) {
			unsigned long bfn;

			bfn = pfn_to_bfn(page_to_pfn(map->pages[i]));
			map->unmap_ops[i].dev_bus_addr = __pfn_to_phys(bfn);
		}
#endif
	}
	return err;
}