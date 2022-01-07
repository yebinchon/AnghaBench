
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_ref {int action; void* parent; void* len; void* bytenr; } ;



__attribute__((used)) static inline void btrfs_init_generic_ref(struct btrfs_ref *generic_ref,
    int action, u64 bytenr, u64 len, u64 parent)
{
 generic_ref->action = action;
 generic_ref->bytenr = bytenr;
 generic_ref->len = len;
 generic_ref->parent = parent;
}
