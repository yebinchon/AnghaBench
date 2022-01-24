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
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MOD_LOG_KEY_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 int FUNC3 (struct extent_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct btrfs_path *path,
			   struct btrfs_disk_key *key, int level)
{
	int i;
	struct extent_buffer *t;
	int ret;

	for (i = level; i < BTRFS_MAX_LEVEL; i++) {
		int tslot = path->slots[i];

		if (!path->nodes[i])
			break;
		t = path->nodes[i];
		ret = FUNC3(t, tslot, MOD_LOG_KEY_REPLACE,
				GFP_ATOMIC);
		FUNC0(ret < 0);
		FUNC2(t, key, tslot);
		FUNC1(path->nodes[i]);
		if (tslot != 0)
			break;
	}
}