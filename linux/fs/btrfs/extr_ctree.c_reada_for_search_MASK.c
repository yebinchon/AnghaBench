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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_path {scalar_t__ reada; struct extent_buffer** nodes; } ;
struct btrfs_fs_info {int nodesize; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ READA_BACK ; 
 scalar_t__ READA_FORWARD ; 
 scalar_t__ FUNC0 (struct btrfs_disk_key*) ; 
 int FUNC1 (struct extent_buffer*) ; 
 scalar_t__ FUNC2 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 struct extent_buffer* FUNC4 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct btrfs_fs_info *fs_info,
			     struct btrfs_path *path,
			     int level, int slot, u64 objectid)
{
	struct extent_buffer *node;
	struct btrfs_disk_key disk_key;
	u32 nritems;
	u64 search;
	u64 target;
	u64 nread = 0;
	struct extent_buffer *eb;
	u32 nr;
	u32 blocksize;
	u32 nscan = 0;

	if (level != 1)
		return;

	if (!path->nodes[level])
		return;

	node = path->nodes[level];

	search = FUNC2(node, slot);
	blocksize = fs_info->nodesize;
	eb = FUNC4(fs_info, search);
	if (eb) {
		FUNC5(eb);
		return;
	}

	target = search;

	nritems = FUNC1(node);
	nr = slot;

	while (1) {
		if (path->reada == READA_BACK) {
			if (nr == 0)
				break;
			nr--;
		} else if (path->reada == READA_FORWARD) {
			nr++;
			if (nr >= nritems)
				break;
		}
		if (path->reada == READA_BACK && objectid) {
			FUNC3(node, &disk_key, nr);
			if (FUNC0(&disk_key) != objectid)
				break;
		}
		search = FUNC2(node, nr);
		if ((search <= target && target - search <= 65536) ||
		    (search > target && search - target <= 65536)) {
			FUNC6(fs_info, search);
			nread += blocksize;
		}
		nscan++;
		if ((nread > 65536 || nscan > 32))
			break;
	}
}