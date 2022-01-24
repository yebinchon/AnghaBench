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
struct btrfs_extent_data_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct extent_buffer *eb,
				  struct btrfs_extent_data_ref *ref)
{
	FUNC4("extent data backref root %llu objectid %llu offset %llu count %u\n",
	       FUNC3(eb, ref),
	       FUNC1(eb, ref),
	       FUNC2(eb, ref),
	       FUNC0(eb, ref));
}