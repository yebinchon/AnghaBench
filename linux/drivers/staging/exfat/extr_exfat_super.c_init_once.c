
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exfat_inode_info {int vfs_inode; int i_hash_fat; } ;


 int INIT_HLIST_NODE (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct exfat_inode_info *ei = (struct exfat_inode_info *)foo;

 INIT_HLIST_NODE(&ei->i_hash_fat);
 inode_init_once(&ei->vfs_inode);
}
