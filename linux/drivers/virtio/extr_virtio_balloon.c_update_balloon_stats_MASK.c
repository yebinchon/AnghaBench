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
struct virtio_balloon {int dummy; } ;
struct sysinfo {unsigned long freeram; unsigned long totalram; } ;

/* Variables and functions */
 size_t HTLB_BUDDY_PGALLOC ; 
 size_t HTLB_BUDDY_PGALLOC_FAIL ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int NR_VM_EVENT_ITEMS ; 
 size_t PGFAULT ; 
 size_t PGMAJFAULT ; 
 size_t PSWPIN ; 
 size_t PSWPOUT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_AVAIL ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_CACHES ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_HTLB_PGALLOC ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_HTLB_PGFAIL ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MAJFLT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MEMFREE ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MEMTOT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MINFLT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_SWAP_IN ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_SWAP_OUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long) ; 
 long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_balloon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC6(struct virtio_balloon *vb)
{
	unsigned long events[NR_VM_EVENT_ITEMS];
	struct sysinfo i;
	unsigned int idx = 0;
	long available;
	unsigned long caches;

	FUNC0(events);
	FUNC4(&i);

	available = FUNC3();
	caches = FUNC1(NR_FILE_PAGES);

#ifdef CONFIG_VM_EVENT_COUNTERS
	update_stat(vb, idx++, VIRTIO_BALLOON_S_SWAP_IN,
				pages_to_bytes(events[PSWPIN]));
	update_stat(vb, idx++, VIRTIO_BALLOON_S_SWAP_OUT,
				pages_to_bytes(events[PSWPOUT]));
	update_stat(vb, idx++, VIRTIO_BALLOON_S_MAJFLT, events[PGMAJFAULT]);
	update_stat(vb, idx++, VIRTIO_BALLOON_S_MINFLT, events[PGFAULT]);
#ifdef CONFIG_HUGETLB_PAGE
	update_stat(vb, idx++, VIRTIO_BALLOON_S_HTLB_PGALLOC,
		    events[HTLB_BUDDY_PGALLOC]);
	update_stat(vb, idx++, VIRTIO_BALLOON_S_HTLB_PGFAIL,
		    events[HTLB_BUDDY_PGALLOC_FAIL]);
#endif
#endif
	FUNC5(vb, idx++, VIRTIO_BALLOON_S_MEMFREE,
				FUNC2(i.freeram));
	FUNC5(vb, idx++, VIRTIO_BALLOON_S_MEMTOT,
				FUNC2(i.totalram));
	FUNC5(vb, idx++, VIRTIO_BALLOON_S_AVAIL,
				FUNC2(available));
	FUNC5(vb, idx++, VIRTIO_BALLOON_S_CACHES,
				FUNC2(caches));

	return idx;
}