
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void ceph_inode_init_once(void *foo)
{
 struct ceph_inode_info *ci = foo;
 inode_init_once(&ci->vfs_inode);
}
