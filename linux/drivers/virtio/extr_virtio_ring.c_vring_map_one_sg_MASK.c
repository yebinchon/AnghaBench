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
struct vring_virtqueue {int /*<<< orphan*/  use_dma_api; } ;
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct vring_virtqueue const*) ; 

__attribute__((used)) static dma_addr_t FUNC4(const struct vring_virtqueue *vq,
				   struct scatterlist *sg,
				   enum dma_data_direction direction)
{
	if (!vq->use_dma_api)
		return (dma_addr_t)FUNC2(sg);

	/*
	 * We can't use dma_map_sg, because we don't use scatterlists in
	 * the way it expects (we don't guarantee that the scatterlist
	 * will exist for the lifetime of the mapping).
	 */
	return FUNC0(FUNC3(vq),
			    FUNC1(sg), sg->offset, sg->length,
			    direction);
}