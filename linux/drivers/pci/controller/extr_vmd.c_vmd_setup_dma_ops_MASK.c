#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  domain; } ;
struct dma_domain {struct dma_map_ops* dma_ops; int /*<<< orphan*/  domain_nr; } ;
struct dma_map_ops {int dummy; } ;
struct vmd_dev {TYPE_2__ sysdata; struct dma_domain dma_domain; struct dma_map_ops dma_ops; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_map_ops const*,struct dma_map_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_domain*) ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  dma_supported ; 
 int /*<<< orphan*/  free ; 
 struct dma_map_ops* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_required_mask ; 
 int /*<<< orphan*/  get_sgtable ; 
 int /*<<< orphan*/  map_page ; 
 int /*<<< orphan*/  map_sg ; 
 int /*<<< orphan*/  mmap ; 
 int /*<<< orphan*/  sync_sg_for_cpu ; 
 int /*<<< orphan*/  sync_sg_for_device ; 
 int /*<<< orphan*/  sync_single_for_cpu ; 
 int /*<<< orphan*/  sync_single_for_device ; 
 int /*<<< orphan*/  unmap_page ; 
 int /*<<< orphan*/  unmap_sg ; 

__attribute__((used)) static void FUNC3(struct vmd_dev *vmd)
{
	const struct dma_map_ops *source = FUNC2(&vmd->dev->dev);
	struct dma_map_ops *dest = &vmd->dma_ops;
	struct dma_domain *domain = &vmd->dma_domain;

	domain->domain_nr = vmd->sysdata.domain;
	domain->dma_ops = dest;

	if (!source)
		return;
	FUNC0(source, dest, alloc);
	FUNC0(source, dest, free);
	FUNC0(source, dest, mmap);
	FUNC0(source, dest, get_sgtable);
	FUNC0(source, dest, map_page);
	FUNC0(source, dest, unmap_page);
	FUNC0(source, dest, map_sg);
	FUNC0(source, dest, unmap_sg);
	FUNC0(source, dest, sync_single_for_cpu);
	FUNC0(source, dest, sync_single_for_device);
	FUNC0(source, dest, sync_sg_for_cpu);
	FUNC0(source, dest, sync_sg_for_device);
	FUNC0(source, dest, dma_supported);
	FUNC0(source, dest, get_required_mask);
	FUNC1(domain);
}