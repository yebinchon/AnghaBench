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
typedef  void* u64 ;
typedef  scalar_t__ u32 ;
struct root_entry {int /*<<< orphan*/  num_refs; } ;
struct ref_entry {scalar_t__ num_refs; void* offset; void* root_objectid; void* owner; scalar_t__ parent; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  ref_verify_lock; } ;
struct btrfs_extent_data_ref {int dummy; } ;
struct block_entry {int /*<<< orphan*/  roots; int /*<<< orphan*/  refs; int /*<<< orphan*/  num_refs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct block_entry*) ; 
 int FUNC1 (struct block_entry*) ; 
 struct block_entry* FUNC2 (struct btrfs_fs_info*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*) ; 
 scalar_t__ FUNC4 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 void* FUNC5 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 void* FUNC6 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 void* FUNC7 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct ref_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct ref_entry*) ; 
 struct ref_entry* FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct root_entry* FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct btrfs_fs_info *fs_info,
			       struct extent_buffer *leaf,
			       struct btrfs_extent_data_ref *dref,
			       u64 bytenr, u64 num_bytes)
{
	struct block_entry *be;
	struct ref_entry *ref;
	struct root_entry *re;
	u64 ref_root = FUNC7(leaf, dref);
	u64 owner = FUNC5(leaf, dref);
	u64 offset = FUNC6(leaf, dref);
	u32 num_refs = FUNC4(leaf, dref);

	ref = FUNC10(sizeof(struct ref_entry), GFP_KERNEL);
	if (!ref)
		return -ENOMEM;
	be = FUNC2(fs_info, bytenr, num_bytes, ref_root);
	if (FUNC0(be)) {
		FUNC9(ref);
		return FUNC1(be);
	}
	be->num_refs += num_refs;

	ref->parent = 0;
	ref->owner = owner;
	ref->root_objectid = ref_root;
	ref->offset = offset;
	ref->num_refs = num_refs;
	if (FUNC8(&be->refs, ref)) {
		FUNC12(&fs_info->ref_verify_lock);
		FUNC3(fs_info, "existing ref when reading from disk?");
		FUNC9(ref);
		return -EINVAL;
	}

	re = FUNC11(&be->roots, ref_root);
	if (!re) {
		FUNC12(&fs_info->ref_verify_lock);
		FUNC3(fs_info, "missing root in new block entry?");
		return -EINVAL;
	}
	re->num_refs += num_refs;
	FUNC12(&fs_info->ref_verify_lock);
	return 0;
}