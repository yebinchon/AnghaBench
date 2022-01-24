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
typedef  scalar_t__ u32 ;
struct ref_entry {scalar_t__ num_refs; int /*<<< orphan*/  parent; } ;
struct btrfs_fs_info {int /*<<< orphan*/  ref_verify_lock; } ;
struct block_entry {int /*<<< orphan*/  refs; int /*<<< orphan*/  num_refs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct block_entry*) ; 
 int FUNC1 (struct block_entry*) ; 
 struct block_entry* FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct ref_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_entry*) ; 
 struct ref_entry* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct btrfs_fs_info *fs_info,
			       u64 parent, u32 num_refs, u64 bytenr,
			       u64 num_bytes)
{
	struct block_entry *be;
	struct ref_entry *ref;

	ref = FUNC6(sizeof(struct ref_entry), GFP_KERNEL);
	if (!ref)
		return -ENOMEM;
	be = FUNC2(fs_info, bytenr, num_bytes, 0);
	if (FUNC0(be)) {
		FUNC5(ref);
		return FUNC1(be);
	}
	be->num_refs += num_refs;

	ref->parent = parent;
	ref->num_refs = num_refs;
	if (FUNC4(&be->refs, ref)) {
		FUNC7(&fs_info->ref_verify_lock);
		FUNC3(fs_info, "existing shared ref when reading from disk?");
		FUNC5(ref);
		return -EINVAL;
	}
	FUNC7(&fs_info->ref_verify_lock);
	return 0;
}