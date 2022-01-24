#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {scalar_t__ send_in_progress; int /*<<< orphan*/  root_item_lock; TYPE_1__ root_key; int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct btrfs_root* root)
{
	FUNC1(&root->root_item_lock);
	root->send_in_progress--;
	/*
	 * Not much left to do, we don't know why it's unbalanced and
	 * can't blindly reset it to 0.
	 */
	if (root->send_in_progress < 0)
		FUNC0(root->fs_info,
			  "send_in_progress unbalanced %d root %llu",
			  root->send_in_progress, root->root_key.objectid);
	FUNC2(&root->root_item_lock);
}