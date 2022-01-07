
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_qgroup_list {int next_member; int next_group; struct btrfs_qgroup* member; struct btrfs_qgroup* group; } ;
struct btrfs_qgroup {int members; int groups; } ;
struct btrfs_fs_info {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct btrfs_qgroup* find_qgroup_rb (struct btrfs_fs_info*,int ) ;
 struct btrfs_qgroup_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int add_relation_rb(struct btrfs_fs_info *fs_info,
      u64 memberid, u64 parentid)
{
 struct btrfs_qgroup *member;
 struct btrfs_qgroup *parent;
 struct btrfs_qgroup_list *list;

 member = find_qgroup_rb(fs_info, memberid);
 parent = find_qgroup_rb(fs_info, parentid);
 if (!member || !parent)
  return -ENOENT;

 list = kzalloc(sizeof(*list), GFP_ATOMIC);
 if (!list)
  return -ENOMEM;

 list->group = parent;
 list->member = member;
 list_add_tail(&list->next_group, &member->groups);
 list_add_tail(&list->next_member, &parent->members);

 return 0;
}
