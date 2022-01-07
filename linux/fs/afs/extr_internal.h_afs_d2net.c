
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct afs_net {int dummy; } ;


 struct afs_net* afs_sb2net (int ) ;

__attribute__((used)) static inline struct afs_net *afs_d2net(struct dentry *dentry)
{
 return afs_sb2net(dentry->d_sb);
}
