
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__* values; } ;
struct btrfs_qgroup {TYPE_1__ rsv; } ;


 int BTRFS_QGROUP_RSV_LAST ;

__attribute__((used)) static u64 qgroup_rsv_total(const struct btrfs_qgroup *qgroup)
{
 u64 ret = 0;
 int i;

 for (i = 0; i < BTRFS_QGROUP_RSV_LAST; i++)
  ret += qgroup->rsv.values[i];

 return ret;
}
