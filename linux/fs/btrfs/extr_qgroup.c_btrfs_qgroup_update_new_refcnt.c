
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_qgroup {scalar_t__ new_refcnt; } ;



__attribute__((used)) static void btrfs_qgroup_update_new_refcnt(struct btrfs_qgroup *qg, u64 seq,
        int mod)
{
 if (qg->new_refcnt < seq)
  qg->new_refcnt = seq;
 qg->new_refcnt += mod;
}
