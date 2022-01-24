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
struct extent_buffer {int /*<<< orphan*/  start; } ;
struct btrfs_root_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root_item*,int /*<<< orphan*/ ) ; 

void FUNC5(struct btrfs_root_item *item,
			 struct extent_buffer *node)
{
	FUNC2(item, node->start);
	FUNC4(item, FUNC1(node));
	FUNC3(item, FUNC0(node));
}