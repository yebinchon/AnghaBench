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
struct root_entry {void* roots; int /*<<< orphan*/  actions; void* refs; scalar_t__ from_disk; scalar_t__ metadata; scalar_t__ num_refs; void* root_objectid; void* len; void* bytenr; } ;
struct btrfs_fs_info {int /*<<< orphan*/  block_tree; int /*<<< orphan*/  ref_verify_lock; } ;
struct block_entry {void* roots; int /*<<< orphan*/  actions; void* refs; scalar_t__ from_disk; scalar_t__ metadata; scalar_t__ num_refs; void* root_objectid; void* len; void* bytenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct root_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT ; 
 struct root_entry* FUNC2 (int /*<<< orphan*/ *,struct root_entry*) ; 
 struct root_entry* FUNC3 (void**,struct root_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct root_entry*) ; 
 struct root_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct block_entry *FUNC7(struct btrfs_fs_info *fs_info,
					   u64 bytenr, u64 len,
					   u64 root_objectid)
{
	struct block_entry *be = NULL, *exist;
	struct root_entry *re = NULL;

	re = FUNC5(sizeof(struct root_entry), GFP_KERNEL);
	be = FUNC5(sizeof(struct block_entry), GFP_KERNEL);
	if (!be || !re) {
		FUNC4(re);
		FUNC4(be);
		return FUNC0(-ENOMEM);
	}
	be->bytenr = bytenr;
	be->len = len;

	re->root_objectid = root_objectid;
	re->num_refs = 0;

	FUNC6(&fs_info->ref_verify_lock);
	exist = FUNC2(&fs_info->block_tree, be);
	if (exist) {
		if (root_objectid) {
			struct root_entry *exist_re;

			exist_re = FUNC3(&exist->roots, re);
			if (exist_re)
				FUNC4(re);
		}
		FUNC4(be);
		return exist;
	}

	be->num_refs = 0;
	be->metadata = 0;
	be->from_disk = 0;
	be->roots = RB_ROOT;
	be->refs = RB_ROOT;
	FUNC1(&be->actions);
	if (root_objectid)
		FUNC3(&be->roots, re);
	else
		FUNC4(re);
	return be;
}