
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_2__ {void* offset; void* ino; void* ref_root; } ;
struct btrfs_ref {int type; TYPE_1__ data_ref; void* real_root; } ;


 int BTRFS_REF_DATA ;

__attribute__((used)) static inline void btrfs_init_data_ref(struct btrfs_ref *generic_ref,
    u64 ref_root, u64 ino, u64 offset)
{

 if (!generic_ref->real_root)
  generic_ref->real_root = ref_root;
 generic_ref->data_ref.ref_root = ref_root;
 generic_ref->data_ref.ino = ino;
 generic_ref->data_ref.offset = offset;
 generic_ref->type = BTRFS_REF_DATA;
}
