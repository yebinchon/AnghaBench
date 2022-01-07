
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_qgroup {int dummy; } ;



__attribute__((used)) static inline u64 qgroup_to_aux(struct btrfs_qgroup *qg)
{
 return (u64)(uintptr_t)qg;
}
