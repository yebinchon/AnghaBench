
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_2__ {int net_ns; } ;


 TYPE_1__* AFS_FS_S (struct super_block*) ;
 struct afs_net* afs_net (int ) ;

__attribute__((used)) static inline struct afs_net *afs_sb2net(struct super_block *sb)
{
 return afs_net(AFS_FS_S(sb)->net_ns);
}
