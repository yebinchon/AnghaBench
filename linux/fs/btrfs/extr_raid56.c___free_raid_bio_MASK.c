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
struct btrfs_raid_bio {int nr_pages; int /*<<< orphan*/  bbio; int /*<<< orphan*/ ** stripe_pages; int /*<<< orphan*/  bio_list; int /*<<< orphan*/  hash_list; int /*<<< orphan*/  stripe_cache; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct btrfs_raid_bio *rbio)
{
	int i;

	if (!FUNC6(&rbio->refs))
		return;

	FUNC0(!FUNC5(&rbio->stripe_cache));
	FUNC0(!FUNC5(&rbio->hash_list));
	FUNC0(!FUNC2(&rbio->bio_list));

	for (i = 0; i < rbio->nr_pages; i++) {
		if (rbio->stripe_pages[i]) {
			FUNC1(rbio->stripe_pages[i]);
			rbio->stripe_pages[i] = NULL;
		}
	}

	FUNC3(rbio->bbio);
	FUNC4(rbio);
}