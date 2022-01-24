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
struct btrfs_path {int /*<<< orphan*/ * slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btrfs_path*,int*) ; 
 int FUNC3 (struct btrfs_path*,int*,int) ; 

__attribute__((used)) static int FUNC4(struct btrfs_path *path,
			int *level, int root_level,
			int allow_down,
			struct btrfs_key *key)
{
	int ret;

	if (*level == 0 || !allow_down) {
		ret = FUNC3(path, level, root_level);
	} else {
		ret = FUNC2(path, level);
	}
	if (ret >= 0) {
		if (*level == 0)
			FUNC0(path->nodes[*level], key,
					path->slots[*level]);
		else
			FUNC1(path->nodes[*level], key,
					path->slots[*level]);
	}
	return ret;
}