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
struct virtio_balloon {unsigned int num_pfns; int /*<<< orphan*/  balloon_lock; int /*<<< orphan*/  inflate_vq; TYPE_1__* vdev; int /*<<< orphan*/  num_pages; scalar_t__ pfns; int /*<<< orphan*/  vb_dev_info; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_F_DEFLATE_ON_OOM ; 
 scalar_t__ VIRTIO_BALLOON_PAGES_PER_PAGE ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int) ; 
 struct page* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct page*) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 size_t FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pages ; 
 int /*<<< orphan*/  FUNC12 (struct virtio_balloon*,scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct virtio_balloon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC15(struct virtio_balloon *vb, size_t num)
{
	unsigned num_allocated_pages;
	unsigned num_pfns;
	struct page *page;
	FUNC1(pages);

	/* We can only do one array worth at a time. */
	num = FUNC8(num, FUNC0(vb->pfns));

	for (num_pfns = 0; num_pfns < num;
	     num_pfns += VIRTIO_BALLOON_PAGES_PER_PAGE) {
		struct page *page = FUNC3();

		if (!page) {
			FUNC7(&vb->vdev->dev,
					     "Out of puff! Can't get %u pages\n",
					     VIRTIO_BALLOON_PAGES_PER_PAGE);
			/* Sleep for at least 1/5 of a second before retry. */
			FUNC9(200);
			break;
		}

		FUNC6(&pages, page);
	}

	FUNC10(&vb->balloon_lock);

	vb->num_pfns = 0;

	while ((page = FUNC5(&pages))) {
		FUNC4(&vb->vb_dev_info, page);

		FUNC12(vb, vb->pfns + vb->num_pfns, page);
		vb->num_pages += VIRTIO_BALLOON_PAGES_PER_PAGE;
		if (!FUNC14(vb->vdev,
					VIRTIO_BALLOON_F_DEFLATE_ON_OOM))
			FUNC2(page, -1);
		vb->num_pfns += VIRTIO_BALLOON_PAGES_PER_PAGE;
	}

	num_allocated_pages = vb->num_pfns;
	/* Did we get any? */
	if (vb->num_pfns != 0)
		FUNC13(vb, vb->inflate_vq);
	FUNC11(&vb->balloon_lock);

	return num_allocated_pages;
}