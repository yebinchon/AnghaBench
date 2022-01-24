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
struct btrfs_raid_bio {int nr_pages; int /*<<< orphan*/  flags; int /*<<< orphan*/ * stripe_pages; int /*<<< orphan*/ * bio_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  RBIO_CACHE_READY_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct btrfs_raid_bio *rbio)
{
	int i;
	char *s;
	char *d;
	int ret;

	ret = FUNC1(rbio);
	if (ret)
		return;

	for (i = 0; i < rbio->nr_pages; i++) {
		if (!rbio->bio_pages[i])
			continue;

		s = FUNC3(rbio->bio_pages[i]);
		d = FUNC3(rbio->stripe_pages[i]);

		FUNC2(d, s);

		FUNC4(rbio->bio_pages[i]);
		FUNC4(rbio->stripe_pages[i]);
		FUNC0(rbio->stripe_pages[i]);
	}
	FUNC5(RBIO_CACHE_READY_BIT, &rbio->flags);
}