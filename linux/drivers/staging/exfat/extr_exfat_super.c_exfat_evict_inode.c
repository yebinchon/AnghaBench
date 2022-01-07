
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_data; } ;


 int clear_inode (struct inode*) ;
 int exfat_detach (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int invalidate_inode_buffers (struct inode*) ;
 int remove_inode_hash (struct inode*) ;
 int truncate_inode_pages (int *,int ) ;

__attribute__((used)) static void exfat_evict_inode(struct inode *inode)
{
 truncate_inode_pages(&inode->i_data, 0);

 if (!inode->i_nlink)
  i_size_write(inode, 0);
 invalidate_inode_buffers(inode);
 clear_inode(inode);
 exfat_detach(inode);

 remove_inode_hash(inode);
}
