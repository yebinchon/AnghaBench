#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tegra_vde_cache_entry {int /*<<< orphan*/  list; TYPE_2__* a; int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  sgt; int /*<<< orphan*/  iova; TYPE_1__* vde; int /*<<< orphan*/  refcnt; } ;
struct dma_buf {int dummy; } ;
struct TYPE_5__ {struct dma_buf* dmabuf; } ;
struct TYPE_4__ {scalar_t__ domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_buf*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_vde_cache_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct tegra_vde_cache_entry *entry)
{
	struct dma_buf *dmabuf = entry->a->dmabuf;

	FUNC0(entry->refcnt);

	if (entry->vde->domain)
		FUNC6(entry->vde, entry->iova);

	FUNC3(entry->a, entry->sgt, entry->dma_dir);
	FUNC1(dmabuf, entry->a);
	FUNC2(dmabuf);

	FUNC5(&entry->list);
	FUNC4(entry);
}