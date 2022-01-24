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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {struct extent_buffer** nodes; scalar_t__ search_for_split; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EAGAIN ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,struct btrfs_path*,int) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int) ; 

__attribute__((used)) static int
FUNC8(struct btrfs_trans_handle *trans,
		       struct btrfs_root *root, struct btrfs_path *p,
		       struct extent_buffer *b, int level, int ins_len,
		       int *write_lock_level)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	int ret;

	if ((p->search_for_split || ins_len > 0) && FUNC3(b) >=
	    FUNC0(fs_info) - 3) {
		int sret;

		if (*write_lock_level < level + 1) {
			*write_lock_level = level + 1;
			FUNC4(p);
			goto again;
		}

		FUNC5(p);
		FUNC6(fs_info, p, level);
		sret = FUNC7(trans, root, p, level);

		FUNC1(sret > 0);
		if (sret) {
			ret = sret;
			goto done;
		}
		b = p->nodes[level];
	} else if (ins_len < 0 && FUNC3(b) <
		   FUNC0(fs_info) / 2) {
		int sret;

		if (*write_lock_level < level + 1) {
			*write_lock_level = level + 1;
			FUNC4(p);
			goto again;
		}

		FUNC5(p);
		FUNC6(fs_info, p, level);
		sret = FUNC2(trans, root, p, level);

		if (sret) {
			ret = sret;
			goto done;
		}
		b = p->nodes[level];
		if (!b) {
			FUNC4(p);
			goto again;
		}
		FUNC1(FUNC3(b) == 1);
	}
	return 0;

again:
	ret = -EAGAIN;
done:
	return ret;
}