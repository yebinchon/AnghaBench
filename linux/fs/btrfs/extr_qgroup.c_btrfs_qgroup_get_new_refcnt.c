
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_qgroup {scalar_t__ new_refcnt; } ;



__attribute__((used)) static inline u64 btrfs_qgroup_get_new_refcnt(struct btrfs_qgroup *qg, u64 seq)
{
 if (qg->new_refcnt < seq)
  return 0;
 return qg->new_refcnt - seq;
}
