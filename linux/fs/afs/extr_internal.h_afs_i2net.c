
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct afs_net {int dummy; } ;


 struct afs_net* afs_sb2net (int ) ;

__attribute__((used)) static inline struct afs_net *afs_i2net(struct inode *inode)
{
 return afs_sb2net(inode->i_sb);
}
