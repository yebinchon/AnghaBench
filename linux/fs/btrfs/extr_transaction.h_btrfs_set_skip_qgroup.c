
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_delayed_ref_root {int qgroup_to_skip; } ;
struct TYPE_2__ {struct btrfs_delayed_ref_root delayed_refs; } ;


 int WARN_ON (int ) ;

__attribute__((used)) static inline void btrfs_set_skip_qgroup(struct btrfs_trans_handle *trans,
      u64 qgroupid)
{
 struct btrfs_delayed_ref_root *delayed_refs;

 delayed_refs = &trans->transaction->delayed_refs;
 WARN_ON(delayed_refs->qgroup_to_skip);
 delayed_refs->qgroup_to_skip = qgroupid;
}
