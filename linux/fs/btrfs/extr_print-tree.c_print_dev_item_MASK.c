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
struct extent_buffer {int dummy; } ;
struct btrfs_dev_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct extent_buffer *eb,
			   struct btrfs_dev_item *dev_item)
{
	FUNC3("\t\tdev item devid %llu total_bytes %llu bytes used %llu\n",
	       FUNC1(eb, dev_item),
	       FUNC2(eb, dev_item),
	       FUNC0(eb, dev_item));
}