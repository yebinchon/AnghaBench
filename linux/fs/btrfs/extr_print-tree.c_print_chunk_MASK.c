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
struct btrfs_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int FUNC1 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_chunk*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_chunk*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC7(struct extent_buffer *eb, struct btrfs_chunk *chunk)
{
	int num_stripes = FUNC1(eb, chunk);
	int i;
	FUNC6("\t\tchunk length %llu owner %llu type %llu num_stripes %d\n",
	       FUNC0(eb, chunk), FUNC2(eb, chunk),
	       FUNC3(eb, chunk), num_stripes);
	for (i = 0 ; i < num_stripes ; i++) {
		FUNC6("\t\t\tstripe %d devid %llu offset %llu\n", i,
		      FUNC4(eb, chunk, i),
		      FUNC5(eb, chunk, i));
	}
}