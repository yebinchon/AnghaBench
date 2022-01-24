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
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC3 (struct extent_buffer*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct btrfs_path *path, int *level)
{
	struct extent_buffer *eb;

	FUNC0(*level == 0);
	eb = FUNC3(path->nodes[*level], path->slots[*level]);
	if (FUNC1(eb))
		return FUNC2(eb);

	path->nodes[*level - 1] = eb;
	path->slots[*level - 1] = 0;
	(*level)--;
	return 0;
}