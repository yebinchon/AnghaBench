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
struct virtio_balloon {scalar_t__ num_pages; } ;

/* Variables and functions */
 unsigned long VIRTIO_BALLOON_PAGES_PER_PAGE ; 
 unsigned long FUNC0 (struct virtio_balloon*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_balloon*) ; 

__attribute__((used)) static unsigned long FUNC2(struct virtio_balloon *vb,
					  unsigned long pages_to_free)
{
	unsigned long pages_freed = 0;

	/*
	 * One invocation of leak_balloon can deflate at most
	 * VIRTIO_BALLOON_ARRAY_PFNS_MAX balloon pages, so we call it
	 * multiple times to deflate pages till reaching pages_to_free.
	 */
	while (vb->num_pages && pages_to_free) {
		pages_freed += FUNC0(vb, pages_to_free) /
					VIRTIO_BALLOON_PAGES_PER_PAGE;
		pages_to_free -= pages_freed;
	}
	FUNC1(vb);

	return pages_freed;
}