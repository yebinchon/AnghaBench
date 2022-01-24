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
struct btrfs_subvolume_writers {int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_subvolume_writers*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct btrfs_subvolume_writers *writers)
{
	FUNC1(&writers->counter);
	FUNC0(writers);
}