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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; int /*<<< orphan*/  offset; } ;
struct btrfs_inode_ref {int dummy; } ;
struct btrfs_inode_extref {int dummy; } ;
struct btrfs_inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ BTRFS_INODE_EXTREF_KEY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,int,int /*<<< orphan*/ ,char*,int) ; 
 unsigned long FUNC3 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,struct btrfs_inode*,char*,int) ; 
 int FUNC8 (struct extent_buffer*,unsigned long,int*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct inode* FUNC11 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct extent_buffer*,unsigned long,int*,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct btrfs_trans_handle *trans,
				 struct btrfs_root *root,
				 struct btrfs_path *path,
				 struct btrfs_inode *inode,
				 struct extent_buffer *log_eb,
				 int log_slot,
				 struct btrfs_key *key)
{
	int ret;
	unsigned long ref_ptr;
	unsigned long ref_end;
	struct extent_buffer *eb;

again:
	FUNC5(path);
	ret = FUNC6(NULL, root, key, path, 0, 0);
	if (ret > 0) {
		ret = 0;
		goto out;
	}
	if (ret < 0)
		goto out;

	eb = path->nodes[0];
	ref_ptr = FUNC3(eb, path->slots[0]);
	ref_end = ref_ptr + FUNC4(eb, path->slots[0]);
	while (ref_ptr < ref_end) {
		char *name = NULL;
		int namelen;
		u64 parent_id;

		if (key->type == BTRFS_INODE_EXTREF_KEY) {
			ret = FUNC8(eb, ref_ptr, &namelen, &name,
						NULL, &parent_id);
		} else {
			parent_id = key->offset;
			ret = FUNC12(eb, ref_ptr, &namelen, &name,
					     NULL);
		}
		if (ret)
			goto out;

		if (key->type == BTRFS_INODE_EXTREF_KEY)
			ret = !!FUNC2(log_eb, log_slot,
							       parent_id, name,
							       namelen);
		else
			ret = !!FUNC1(log_eb, log_slot,
							   name, namelen);

		if (!ret) {
			struct inode *dir;

			FUNC5(path);
			dir = FUNC11(root, parent_id);
			if (!dir) {
				ret = -ENOENT;
				FUNC10(name);
				goto out;
			}
			ret = FUNC7(trans, root, FUNC0(dir),
						 inode, name, namelen);
			FUNC10(name);
			FUNC9(dir);
			if (ret)
				goto out;
			goto again;
		}

		FUNC10(name);
		ref_ptr += namelen;
		if (key->type == BTRFS_INODE_EXTREF_KEY)
			ref_ptr += sizeof(struct btrfs_inode_extref);
		else
			ref_ptr += sizeof(struct btrfs_inode_ref);
	}
	ret = 0;
 out:
	FUNC5(path);
	return ret;
}