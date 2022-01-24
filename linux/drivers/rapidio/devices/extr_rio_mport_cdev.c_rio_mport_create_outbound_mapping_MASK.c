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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport_mapping {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; struct mport_dev* md; struct file* filp; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  size; int /*<<< orphan*/  rio_addr; int /*<<< orphan*/  rioid; int /*<<< orphan*/  dir; } ;
struct rio_mport {int dummy; } ;
struct mport_dev {int /*<<< orphan*/  mappings; struct rio_mport* mport; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAP_OUTBOUND ; 
 int /*<<< orphan*/  OBW ; 
 int /*<<< orphan*/  FUNC0 (struct rio_mport_mapping*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rio_mport_mapping* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mport_dev *md, struct file *filp,
				  u16 rioid, u64 raddr, u32 size,
				  dma_addr_t *paddr)
{
	struct rio_mport *mport = md->mport;
	struct rio_mport_mapping *map;
	int ret;

	FUNC5(OBW, "did=%d ra=0x%llx sz=0x%x", rioid, raddr, size);

	map = FUNC2(sizeof(*map), GFP_KERNEL);
	if (map == NULL)
		return -ENOMEM;

	ret = FUNC4(mport, rioid, raddr, size, 0, paddr);
	if (ret < 0)
		goto err_map_outb;

	map->dir = MAP_OUTBOUND;
	map->rioid = rioid;
	map->rio_addr = raddr;
	map->size = size;
	map->phys_addr = *paddr;
	map->filp = filp;
	map->md = md;
	FUNC1(&map->ref);
	FUNC3(&map->node, &md->mappings);
	return 0;
err_map_outb:
	FUNC0(map);
	return ret;
}