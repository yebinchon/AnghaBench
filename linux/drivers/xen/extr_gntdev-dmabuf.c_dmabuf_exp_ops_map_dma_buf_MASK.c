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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct gntdev_dmabuf_attachment {int dir; struct sg_table* sgt; } ;
struct gntdev_dmabuf {int /*<<< orphan*/  nr_pages; int /*<<< orphan*/  pages; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; TYPE_1__* dmabuf; struct gntdev_dmabuf_attachment* priv; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct gntdev_dmabuf* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_SKIP_CPU_SYNC ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sg_table* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_table*) ; 

__attribute__((used)) static struct sg_table *
FUNC7(struct dma_buf_attachment *attach,
			   enum dma_data_direction dir)
{
	struct gntdev_dmabuf_attachment *gntdev_dmabuf_attach = attach->priv;
	struct gntdev_dmabuf *gntdev_dmabuf = attach->dmabuf->priv;
	struct sg_table *sgt;

	FUNC5("Mapping %d pages for dev %p\n", gntdev_dmabuf->nr_pages,
		 attach->dev);

	if (dir == DMA_NONE || !gntdev_dmabuf_attach)
		return FUNC0(-EINVAL);

	/* Return the cached mapping when possible. */
	if (gntdev_dmabuf_attach->dir == dir)
		return gntdev_dmabuf_attach->sgt;

	/*
	 * Two mappings with different directions for the same attachment are
	 * not allowed.
	 */
	if (gntdev_dmabuf_attach->dir != DMA_NONE)
		return FUNC0(-EBUSY);

	sgt = FUNC3(gntdev_dmabuf->pages,
				  gntdev_dmabuf->nr_pages);
	if (!FUNC1(sgt)) {
		if (!FUNC2(attach->dev, sgt->sgl, sgt->nents, dir,
				      DMA_ATTR_SKIP_CPU_SYNC)) {
			FUNC6(sgt);
			FUNC4(sgt);
			sgt = FUNC0(-ENOMEM);
		} else {
			gntdev_dmabuf_attach->sgt = sgt;
			gntdev_dmabuf_attach->dir = dir;
		}
	}
	if (FUNC1(sgt))
		FUNC5("Failed to map sg table for dev %p\n", attach->dev);
	return sgt;
}