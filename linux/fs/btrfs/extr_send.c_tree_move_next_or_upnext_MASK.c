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
struct btrfs_path {int* slots; int /*<<< orphan*/ ** nodes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct btrfs_path *path,
				    int *level, int root_level)
{
	int ret = 0;
	int nritems;
	nritems = FUNC0(path->nodes[*level]);

	path->slots[*level]++;

	while (path->slots[*level] >= nritems) {
		if (*level == root_level)
			return -1;

		/* move upnext */
		path->slots[*level] = 0;
		FUNC1(path->nodes[*level]);
		path->nodes[*level] = NULL;
		(*level)++;
		path->slots[*level]++;

		nritems = FUNC0(path->nodes[*level]);
		ret = 1;
	}
	return ret;
}