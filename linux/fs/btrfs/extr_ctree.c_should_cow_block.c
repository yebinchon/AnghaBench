
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int state; TYPE_1__ root_key; int fs_info; } ;


 int BTRFS_HEADER_FLAG_RELOC ;
 int BTRFS_HEADER_FLAG_WRITTEN ;
 int BTRFS_ROOT_FORCE_COW ;
 scalar_t__ BTRFS_TREE_RELOC_OBJECTID ;
 scalar_t__ btrfs_header_flag (struct extent_buffer*,int ) ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 scalar_t__ btrfs_is_testing (int ) ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int should_cow_block(struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       struct extent_buffer *buf)
{
 if (btrfs_is_testing(root->fs_info))
  return 0;


 smp_mb__before_atomic();
 if (btrfs_header_generation(buf) == trans->transid &&
     !btrfs_header_flag(buf, BTRFS_HEADER_FLAG_WRITTEN) &&
     !(root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID &&
       btrfs_header_flag(buf, BTRFS_HEADER_FLAG_RELOC)) &&
     !test_bit(BTRFS_ROOT_FORCE_COW, &root->state))
  return 0;
 return 1;
}
