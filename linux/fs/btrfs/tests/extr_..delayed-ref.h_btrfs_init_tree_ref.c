
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_2__ {int level; void* root; } ;
struct btrfs_ref {int type; TYPE_1__ tree_ref; void* real_root; } ;


 int BTRFS_REF_METADATA ;

__attribute__((used)) static inline void btrfs_init_tree_ref(struct btrfs_ref *generic_ref,
    int level, u64 root)
{

 if (!generic_ref->real_root)
  generic_ref->real_root = root;
 generic_ref->tree_ref.level = level;
 generic_ref->tree_ref.root = root;
 generic_ref->type = BTRFS_REF_METADATA;
}
