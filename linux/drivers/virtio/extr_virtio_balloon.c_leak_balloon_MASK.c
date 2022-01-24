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
struct balloon_dev_info {int dummy; } ;
struct virtio_balloon {size_t num_pfns; int /*<<< orphan*/  balloon_lock; int /*<<< orphan*/  deflate_vq; scalar_t__ num_pages; scalar_t__ pfns; struct balloon_dev_info vb_dev_info; } ;
struct page {int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VIRTIO_BALLOON_PAGES_PER_PAGE ; 
 struct page* FUNC2 (struct balloon_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pages ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_balloon*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_balloon*,scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_balloon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC10(struct virtio_balloon *vb, size_t num)
{
	unsigned num_freed_pages;
	struct page *page;
	struct balloon_dev_info *vb_dev_info = &vb->vb_dev_info;
	FUNC1(pages);

	/* We can only do one array worth at a time. */
	num = FUNC4(num, FUNC0(vb->pfns));

	FUNC5(&vb->balloon_lock);
	/* We can't release more pages than taken */
	num = FUNC4(num, (size_t)vb->num_pages);
	for (vb->num_pfns = 0; vb->num_pfns < num;
	     vb->num_pfns += VIRTIO_BALLOON_PAGES_PER_PAGE) {
		page = FUNC2(vb_dev_info);
		if (!page)
			break;
		FUNC8(vb, vb->pfns + vb->num_pfns, page);
		FUNC3(&page->lru, &pages);
		vb->num_pages -= VIRTIO_BALLOON_PAGES_PER_PAGE;
	}

	num_freed_pages = vb->num_pfns;
	/*
	 * Note that if
	 * virtio_has_feature(vdev, VIRTIO_BALLOON_F_MUST_TELL_HOST);
	 * is true, we *have* to do it in this order
	 */
	if (vb->num_pfns != 0)
		FUNC9(vb, vb->deflate_vq);
	FUNC7(vb, &pages);
	FUNC6(&vb->balloon_lock);
	return num_freed_pages;
}