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
struct btrfs_io_ctl {int /*<<< orphan*/  cur; int /*<<< orphan*/  index; } ;
struct btrfs_free_space {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_io_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_io_ctl*) ; 

__attribute__((used)) static int FUNC3(struct btrfs_io_ctl *io_ctl,
			      struct btrfs_free_space *entry)
{
	int ret;

	ret = FUNC1(io_ctl, io_ctl->index);
	if (ret)
		return ret;

	FUNC0(entry->bitmap, io_ctl->cur);
	FUNC2(io_ctl);

	return 0;
}