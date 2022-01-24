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
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_disk_key*,struct btrfs_key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_disk_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_disk_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_disk_key*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 scalar_t__ FUNC11 (struct btrfs_disk_key*,struct btrfs_key const*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_path*,struct btrfs_disk_key*,int) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct btrfs_fs_info *fs_info,
			     struct btrfs_path *path,
			     const struct btrfs_key *new_key)
{
	struct btrfs_disk_key disk_key;
	struct extent_buffer *eb;
	int slot;

	eb = path->nodes[0];
	slot = path->slots[0];
	if (slot > 0) {
		FUNC7(eb, &disk_key, slot - 1);
		if (FUNC13(FUNC11(&disk_key, new_key) >= 0)) {
			FUNC2(fs_info,
		"slot %u key (%llu %u %llu) new key (%llu %u %llu)",
				   slot, FUNC3(&disk_key),
				   FUNC5(&disk_key),
				   FUNC4(&disk_key),
				   new_key->objectid, new_key->type,
				   new_key->offset);
			FUNC9(eb);
			FUNC0();
		}
	}
	if (slot < FUNC6(eb) - 1) {
		FUNC7(eb, &disk_key, slot + 1);
		if (FUNC13(FUNC11(&disk_key, new_key) <= 0)) {
			FUNC2(fs_info,
		"slot %u key (%llu %u %llu) new key (%llu %u %llu)",
				   slot, FUNC3(&disk_key),
				   FUNC5(&disk_key),
				   FUNC4(&disk_key),
				   new_key->objectid, new_key->type,
				   new_key->offset);
			FUNC9(eb);
			FUNC0();
		}
	}

	FUNC1(&disk_key, new_key);
	FUNC10(eb, &disk_key, slot);
	FUNC8(eb);
	if (slot == 0)
		FUNC12(path, &disk_key, 1);
}