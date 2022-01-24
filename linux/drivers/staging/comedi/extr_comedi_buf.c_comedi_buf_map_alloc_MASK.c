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
struct comedi_device {int /*<<< orphan*/  hw_dev; } ;
struct comedi_buf_page {void* virt_addr; scalar_t__ dma_addr; } ;
struct comedi_buf_map {int dma_dir; unsigned int n_pages; struct comedi_buf_page* page_list; int /*<<< orphan*/  dma_hw_dev; int /*<<< orphan*/  refcount; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ DMA_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_buf_map*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,unsigned int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct comedi_buf_map* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 struct comedi_buf_page* FUNC8 (int) ; 

__attribute__((used)) static struct comedi_buf_map *
FUNC9(struct comedi_device *dev, enum dma_data_direction dma_dir,
		     unsigned int n_pages)
{
	struct comedi_buf_map *bm;
	struct comedi_buf_page *buf;
	unsigned int i;

	bm = FUNC6(sizeof(*bm), GFP_KERNEL);
	if (!bm)
		return NULL;

	FUNC5(&bm->refcount);
	bm->dma_dir = dma_dir;
	if (bm->dma_dir != DMA_NONE) {
		/* Need ref to hardware device to free buffer later. */
		bm->dma_hw_dev = FUNC3(dev->hw_dev);
	}

	bm->page_list = FUNC8(sizeof(*buf) * n_pages);
	if (!bm->page_list)
		goto err;

	if (bm->dma_dir != DMA_NONE) {
		void *virt_addr;
		dma_addr_t dma_addr;

		/*
		 * Currently, the DMA buffer needs to be allocated as a
		 * single block so that it can be mmap()'ed.
		 */
		virt_addr = FUNC2(bm->dma_hw_dev,
					       PAGE_SIZE * n_pages, &dma_addr,
					       GFP_KERNEL);
		if (!virt_addr)
			goto err;

		for (i = 0; i < n_pages; i++) {
			buf = &bm->page_list[i];
			buf->virt_addr = virt_addr + (i << PAGE_SHIFT);
			buf->dma_addr = dma_addr + (i << PAGE_SHIFT);
		}

		bm->n_pages = i;
	} else {
		for (i = 0; i < n_pages; i++) {
			buf = &bm->page_list[i];
			buf->virt_addr = (void *)FUNC4(GFP_KERNEL);
			if (!buf->virt_addr)
				break;

			FUNC0(FUNC7(buf->virt_addr));
		}

		bm->n_pages = i;
		if (i < n_pages)
			goto err;
	}

	return bm;

err:
	FUNC1(bm);
	return NULL;
}