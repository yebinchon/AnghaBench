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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u64 ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_mod_seq; } ;
struct btrfs_delayed_ref_node {int ref_mod; int action; int in_tree; int /*<<< orphan*/  add_list; int /*<<< orphan*/  ref_node; int /*<<< orphan*/  type; void* seq; scalar_t__ is_head; void* num_bytes; void* bytenr; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int BTRFS_ADD_DELAYED_EXTENT ; 
 int BTRFS_ADD_DELAYED_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct btrfs_fs_info *fs_info,
				    struct btrfs_delayed_ref_node *ref,
				    u64 bytenr, u64 num_bytes, u64 ref_root,
				    int action, u8 ref_type)
{
	u64 seq = 0;

	if (action == BTRFS_ADD_DELAYED_EXTENT)
		action = BTRFS_ADD_DELAYED_REF;

	if (FUNC3(ref_root))
		seq = FUNC2(&fs_info->tree_mod_seq);

	FUNC4(&ref->refs, 1);
	ref->bytenr = bytenr;
	ref->num_bytes = num_bytes;
	ref->ref_mod = 1;
	ref->action = action;
	ref->is_head = 0;
	ref->in_tree = 1;
	ref->seq = seq;
	ref->type = ref_type;
	FUNC1(&ref->ref_node);
	FUNC0(&ref->add_list);
}