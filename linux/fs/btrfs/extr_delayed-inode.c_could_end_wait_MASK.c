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
struct btrfs_delayed_root {int /*<<< orphan*/  items; int /*<<< orphan*/  items_seq; } ;

/* Variables and functions */
 int BTRFS_DELAYED_BACKGROUND ; 
 int BTRFS_DELAYED_BATCH ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct btrfs_delayed_root *delayed_root, int seq)
{
	int val = FUNC0(&delayed_root->items_seq);

	if (val < seq || val >= seq + BTRFS_DELAYED_BATCH)
		return 1;

	if (FUNC0(&delayed_root->items) < BTRFS_DELAYED_BACKGROUND)
		return 1;

	return 0;
}