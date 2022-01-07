
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_refs; int offset; int owner; int parent; int root_objectid; } ;
struct ref_action {TYPE_1__ ref; int root; int action; } ;
struct btrfs_fs_info {int dummy; } ;


 int __print_stack_trace (struct btrfs_fs_info*,struct ref_action*) ;
 int btrfs_err (struct btrfs_fs_info*,char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_ref_action(struct btrfs_fs_info *fs_info,
       struct ref_action *ra)
{
 btrfs_err(fs_info,
"  Ref action %d, root %llu, ref_root %llu, parent %llu, owner %llu, offset %llu, num_refs %llu",
    ra->action, ra->root, ra->ref.root_objectid, ra->ref.parent,
    ra->ref.owner, ra->ref.offset, ra->ref.num_refs);
 __print_stack_trace(fs_info, ra);
}
