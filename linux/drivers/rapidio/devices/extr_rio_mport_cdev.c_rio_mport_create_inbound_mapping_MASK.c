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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rio_mport_mapping {int phys_addr; int rio_addr; int size; int /*<<< orphan*/ * virt_addr; int /*<<< orphan*/  node; int /*<<< orphan*/  ref; struct mport_dev* md; struct file* filp; int /*<<< orphan*/  dir; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct rio_mport {TYPE_1__ dev; } ;
struct mport_dev {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  mappings; struct rio_mport* mport; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAP_INBOUND ; 
 int RIO_MAP_ANY_ADDR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_mport_mapping*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rio_mport_mapping* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct rio_mport*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct mport_dev *md, struct file *filp,
				u64 raddr, u64 size,
				struct rio_mport_mapping **mapping)
{
	struct rio_mport *mport = md->mport;
	struct rio_mport_mapping *map;
	int ret;

	/* rio_map_inb_region() accepts u32 size */
	if (size > 0xffffffff)
		return -EINVAL;

	map = FUNC4(sizeof(*map), GFP_KERNEL);
	if (map == NULL)
		return -ENOMEM;

	map->virt_addr = FUNC0(mport->dev.parent, size,
					    &map->phys_addr, GFP_KERNEL);
	if (map->virt_addr == NULL) {
		ret = -ENOMEM;
		goto err_dma_alloc;
	}

	if (raddr == RIO_MAP_ANY_ADDR)
		raddr = map->phys_addr;
	ret = FUNC8(mport, map->phys_addr, raddr, (u32)size, 0);
	if (ret < 0)
		goto err_map_inb;

	map->dir = MAP_INBOUND;
	map->rio_addr = raddr;
	map->size = size;
	map->filp = filp;
	map->md = md;
	FUNC3(&map->ref);
	FUNC6(&md->buf_mutex);
	FUNC5(&map->node, &md->mappings);
	FUNC7(&md->buf_mutex);
	*mapping = map;
	return 0;

err_map_inb:
	FUNC1(mport->dev.parent, size,
			  map->virt_addr, map->phys_addr);
err_dma_alloc:
	FUNC2(map);
	return ret;
}