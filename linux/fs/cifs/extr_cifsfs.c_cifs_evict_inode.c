
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; } ;


 int cifs_fscache_release_inode_cookie (struct inode*) ;
 int clear_inode (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void
cifs_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 cifs_fscache_release_inode_cookie(inode);
}
