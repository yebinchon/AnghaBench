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
struct btrfs_subvolume_writers {int /*<<< orphan*/  wait; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct btrfs_subvolume_writers* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_subvolume_writers*) ; 
 struct btrfs_subvolume_writers* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct btrfs_subvolume_writers *FUNC5(void)
{
	struct btrfs_subvolume_writers *writers;
	int ret;

	writers = FUNC3(sizeof(*writers), GFP_NOFS);
	if (!writers)
		return FUNC0(-ENOMEM);

	ret = FUNC4(&writers->counter, 0, GFP_NOFS);
	if (ret < 0) {
		FUNC2(writers);
		return FUNC0(ret);
	}

	FUNC1(&writers->wait);
	return writers;
}