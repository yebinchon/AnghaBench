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
struct btrfs_qgroup_list {int /*<<< orphan*/  next_member; int /*<<< orphan*/  next_group; struct btrfs_qgroup* member; struct btrfs_qgroup* group; } ;
struct btrfs_qgroup {int /*<<< orphan*/  members; int /*<<< orphan*/  groups; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct btrfs_qgroup* FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct btrfs_qgroup_list* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct btrfs_fs_info *fs_info,
			   u64 memberid, u64 parentid)
{
	struct btrfs_qgroup *member;
	struct btrfs_qgroup *parent;
	struct btrfs_qgroup_list *list;

	member = FUNC0(fs_info, memberid);
	parent = FUNC0(fs_info, parentid);
	if (!member || !parent)
		return -ENOENT;

	list = FUNC1(sizeof(*list), GFP_ATOMIC);
	if (!list)
		return -ENOMEM;

	list->group = parent;
	list->member = member;
	FUNC2(&list->next_group, &member->groups);
	FUNC2(&list->next_member, &parent->members);

	return 0;
}