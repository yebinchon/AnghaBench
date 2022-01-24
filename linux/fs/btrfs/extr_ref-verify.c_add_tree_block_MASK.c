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
typedef  struct root_entry* u64 ;
struct root_entry {int /*<<< orphan*/  num_refs; } ;
struct ref_entry {int owner; int num_refs; scalar_t__ offset; struct root_entry* parent; struct root_entry* root_objectid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  ref_verify_lock; int /*<<< orphan*/  nodesize; } ;
struct block_entry {int from_disk; int metadata; int /*<<< orphan*/  refs; int /*<<< orphan*/  roots; int /*<<< orphan*/  num_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct root_entry*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct block_entry*) ; 
 int FUNC2 (struct block_entry*) ; 
 struct block_entry* FUNC3 (struct btrfs_fs_info*,struct root_entry*,int /*<<< orphan*/ ,struct root_entry*) ; 
 struct ref_entry* FUNC4 (int /*<<< orphan*/ *,struct ref_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_entry*) ; 
 struct ref_entry* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct root_entry* FUNC7 (int /*<<< orphan*/ *,struct root_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct btrfs_fs_info *fs_info, u64 ref_root,
			  u64 parent, u64 bytenr, int level)
{
	struct block_entry *be;
	struct root_entry *re;
	struct ref_entry *ref = NULL, *exist;

	ref = FUNC6(sizeof(struct ref_entry), GFP_KERNEL);
	if (!ref)
		return -ENOMEM;

	if (parent)
		ref->root_objectid = 0;
	else
		ref->root_objectid = ref_root;
	ref->parent = parent;
	ref->owner = level;
	ref->offset = 0;
	ref->num_refs = 1;

	be = FUNC3(fs_info, bytenr, fs_info->nodesize, ref_root);
	if (FUNC1(be)) {
		FUNC5(ref);
		return FUNC2(be);
	}
	be->num_refs++;
	be->from_disk = 1;
	be->metadata = 1;

	if (!parent) {
		FUNC0(ref_root);
		re = FUNC7(&be->roots, ref_root);
		FUNC0(re);
		re->num_refs++;
	}
	exist = FUNC4(&be->refs, ref);
	if (exist) {
		exist->num_refs++;
		FUNC5(ref);
	}
	FUNC8(&fs_info->ref_verify_lock);

	return 0;
}