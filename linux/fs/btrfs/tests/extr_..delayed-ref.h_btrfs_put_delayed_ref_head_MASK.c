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
struct btrfs_delayed_ref_head {int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  btrfs_delayed_ref_head_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct btrfs_delayed_ref_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct btrfs_delayed_ref_head *head)
{
	if (FUNC1(&head->refs))
		FUNC0(btrfs_delayed_ref_head_cachep, head);
}