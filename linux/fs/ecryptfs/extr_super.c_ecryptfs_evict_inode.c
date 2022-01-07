
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; } ;


 int clear_inode (struct inode*) ;
 int ecryptfs_inode_to_lower (struct inode*) ;
 int iput (int ) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void ecryptfs_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 iput(ecryptfs_inode_to_lower(inode));
}
