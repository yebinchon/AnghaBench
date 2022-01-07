
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_action {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 int btrfs_err (struct btrfs_fs_info*,char*) ;

__attribute__((used)) static void inline __print_stack_trace(struct btrfs_fs_info *fs_info,
           struct ref_action *ra)
{
 btrfs_err(fs_info, "  ref-verify: no stacktrace support");
}
