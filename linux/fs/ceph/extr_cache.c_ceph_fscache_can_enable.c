
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int inode_is_open_for_write (struct inode*) ;

__attribute__((used)) static bool ceph_fscache_can_enable(void *data)
{
 struct inode *inode = data;
 return !inode_is_open_for_write(inode);
}
