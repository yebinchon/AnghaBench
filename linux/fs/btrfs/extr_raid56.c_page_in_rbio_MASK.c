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
struct btrfs_raid_bio {int stripe_len; struct page** stripe_pages; int /*<<< orphan*/  bio_list_lock; struct page** bio_pages; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC2(struct btrfs_raid_bio *rbio,
				 int index, int pagenr, int bio_list_only)
{
	int chunk_page;
	struct page *p = NULL;

	chunk_page = index * (rbio->stripe_len >> PAGE_SHIFT) + pagenr;

	FUNC0(&rbio->bio_list_lock);
	p = rbio->bio_pages[chunk_page];
	FUNC1(&rbio->bio_list_lock);

	if (p || bio_list_only)
		return p;

	return rbio->stripe_pages[chunk_page];
}