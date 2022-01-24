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
struct btrfs_path {scalar_t__* slots; scalar_t__* locks; int /*<<< orphan*/ ** nodes; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct btrfs_path *path, int *level)
{
	int l;

	for (l = 0; l < BTRFS_MAX_LEVEL; l++) {
		if (!path->nodes[l])
			continue;
		if (l) {
			path->slots[l]++;
			if (path->slots[l] <
			    FUNC0(path->nodes[l])) {
				*level = l;
				return 0;
			}
		}
		FUNC1(path->nodes[l], path->locks[l]);
		FUNC2(path->nodes[l]);
		path->nodes[l] = NULL;
		path->slots[l] = 0;
		path->locks[l] = 0;
	}

	return 1;
}