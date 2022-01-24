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
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {struct extent_buffer* node; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;
struct btrfs_key_ptr {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  MOD_LOG_KEY_REMOVE ; 
 int FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct extent_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct extent_buffer*,int,int,int) ; 

__attribute__((used)) static void FUNC12(struct btrfs_root *root, struct btrfs_path *path,
		    int level, int slot)
{
	struct extent_buffer *parent = path->nodes[level];
	u32 nritems;
	int ret;

	nritems = FUNC2(parent);
	if (slot != nritems - 1) {
		if (level) {
			ret = FUNC11(parent, slot, slot + 1,
					nritems - slot - 1);
			FUNC0(ret < 0);
		}
		FUNC9(parent,
			      FUNC5(slot),
			      FUNC5(slot + 1),
			      sizeof(struct btrfs_key_ptr) *
			      (nritems - slot - 1));
	} else if (level) {
		ret = FUNC10(parent, slot, MOD_LOG_KEY_REMOVE,
				GFP_NOFS);
		FUNC0(ret < 0);
	}

	nritems--;
	FUNC7(parent, nritems);
	if (nritems == 0 && parent == root->node) {
		FUNC0(FUNC1(root->node) != 1);
		/* just turn the root into a leaf and break */
		FUNC6(root->node, 0);
	} else if (slot == 0) {
		struct btrfs_disk_key disk_key;

		FUNC4(parent, &disk_key, 0);
		FUNC8(path, &disk_key, level + 1);
	}
	FUNC3(parent);
}