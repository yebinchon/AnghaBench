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
struct btrfs_raid_bio {struct page** stripe_pages; } ;

/* Variables and functions */
 size_t FUNC0 (struct btrfs_raid_bio*,int,int) ; 

__attribute__((used)) static struct page *FUNC1(struct btrfs_raid_bio *rbio, int stripe,
				     int index)
{
	return rbio->stripe_pages[FUNC0(rbio, stripe, index)];
}