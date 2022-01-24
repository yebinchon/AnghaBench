#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  void* u64 ;
struct inode {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ type; void* offset; void* objectid; } ;
struct TYPE_3__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ BTRFS_INODE_EXTREF_KEY ; 
 scalar_t__ BTRFS_INODE_REF_KEY ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC1 () ; 
 void* FUNC2 (void* const,char const*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void* const,char const*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 void* FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct inode *dir,
				  const u8 ref_type, const char *name,
				  const int namelen)
{
	struct btrfs_key key;
	struct btrfs_path *path;
	const u64 parent_id = FUNC6(FUNC0(dir));
	int ret;

	path = FUNC1();
	if (!path)
		return -ENOMEM;

	key.objectid = FUNC6(FUNC0(inode));
	key.type = ref_type;
	if (key.type == BTRFS_INODE_REF_KEY)
		key.offset = parent_id;
	else
		key.offset = FUNC2(parent_id, name, namelen);

	ret = FUNC7(NULL, FUNC0(inode)->root, &key, path, 0, 0);
	if (ret < 0)
		goto out;
	if (ret > 0) {
		ret = 0;
		goto out;
	}
	if (key.type == BTRFS_INODE_EXTREF_KEY)
		ret = !!FUNC4(path->nodes[0],
				path->slots[0], parent_id, name, namelen);
	else
		ret = !!FUNC3(path->nodes[0], path->slots[0],
						   name, namelen);

out:
	FUNC5(path);
	return ret;
}