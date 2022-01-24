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
struct virtqueue {int num_free; } ;
struct virtio_balloon {int /*<<< orphan*/  free_page_list_lock; int /*<<< orphan*/  num_free_page_blocks; int /*<<< orphan*/  free_page_list; struct virtqueue* free_page_vq; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_FREE_PAGE_ALLOC_FLAG ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_FREE_PAGE_ORDER ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_FREE_PAGE_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct virtqueue*,struct scatterlist*,int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct virtqueue*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct virtqueue*) ; 

__attribute__((used)) static int FUNC11(struct virtio_balloon *vb)
{
	struct virtqueue *vq = vb->free_page_vq;
	struct page *page;
	struct scatterlist sg;
	int err, unused;
	void *p;

	/* Detach all the used buffers from the vq */
	while (FUNC9(vq, &unused))
		;

	page = FUNC0(VIRTIO_BALLOON_FREE_PAGE_ALLOC_FLAG,
			   VIRTIO_BALLOON_FREE_PAGE_ORDER);
	/*
	 * When the allocation returns NULL, it indicates that we have got all
	 * the possible free pages, so return -EINTR to stop.
	 */
	if (!page)
		return -EINTR;

	p = FUNC3(page);
	FUNC4(&sg, p, VIRTIO_BALLOON_FREE_PAGE_SIZE);
	/* There is always 1 entry reserved for the cmd id to use. */
	if (vq->num_free > 1) {
		err = FUNC8(vq, &sg, 1, p, GFP_KERNEL);
		if (FUNC7(err)) {
			FUNC2((unsigned long)p,
				   VIRTIO_BALLOON_FREE_PAGE_ORDER);
			return err;
		}
		FUNC10(vq);
		FUNC5(&vb->free_page_list_lock);
		FUNC1(&vb->free_page_list, page);
		vb->num_free_page_blocks++;
		FUNC6(&vb->free_page_list_lock);
	} else {
		/*
		 * The vq has no available entry to add this page block, so
		 * just free it.
		 */
		FUNC2((unsigned long)p, VIRTIO_BALLOON_FREE_PAGE_ORDER);
	}

	return 0;
}