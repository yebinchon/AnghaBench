
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int objectid; } ;
struct btrfs_root {int dedupe_in_progress; TYPE_1__ root_key; int fs_info; } ;


 int btrfs_warn_rl (int ,char*,int ,int ) ;

__attribute__((used)) static void dedupe_in_progress_warn(const struct btrfs_root *root)
{
 btrfs_warn_rl(root->fs_info,
"cannot use root %llu for send while deduplications on it are in progress (%d in progress)",
        root->root_key.objectid, root->dedupe_in_progress);
}
