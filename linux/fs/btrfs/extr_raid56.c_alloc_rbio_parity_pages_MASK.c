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
struct page {int dummy; } ;
struct btrfs_raid_bio {int nr_pages; struct page** stripe_pages; int /*<<< orphan*/  nr_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_NOFS ; 
 int __GFP_HIGHMEM ; 
 struct page* FUNC0 (int) ; 
 int FUNC1 (struct btrfs_raid_bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct btrfs_raid_bio *rbio)
{
	int i;
	struct page *page;

	i = FUNC1(rbio, rbio->nr_data, 0);

	for (; i < rbio->nr_pages; i++) {
		if (rbio->stripe_pages[i])
			continue;
		page = FUNC0(GFP_NOFS | __GFP_HIGHMEM);
		if (!page)
			return -ENOMEM;
		rbio->stripe_pages[i] = page;
	}
	return 0;
}