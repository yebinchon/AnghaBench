
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_blkbits; } ;
struct cifsInodeInfo {int cifsAttrs; struct inode vfs_inode; int llist; int openFileList; int lease_key; int open_file_lock; scalar_t__ epoch; scalar_t__ createtime; scalar_t__ uniqueid; scalar_t__ server_eof; scalar_t__ writers; int writers_lock; scalar_t__ flags; scalar_t__ time; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cifs_inode_cachep ;
 int cifs_set_oplock_level (struct cifsInodeInfo*,int ) ;
 int generate_random_uuid (int ) ;
 struct cifsInodeInfo* kmem_cache_alloc (int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct inode *
cifs_alloc_inode(struct super_block *sb)
{
 struct cifsInodeInfo *cifs_inode;
 cifs_inode = kmem_cache_alloc(cifs_inode_cachep, GFP_KERNEL);
 if (!cifs_inode)
  return ((void*)0);
 cifs_inode->cifsAttrs = 0x20;
 cifs_inode->time = 0;




 cifs_set_oplock_level(cifs_inode, 0);
 cifs_inode->flags = 0;
 spin_lock_init(&cifs_inode->writers_lock);
 cifs_inode->writers = 0;
 cifs_inode->vfs_inode.i_blkbits = 14;
 cifs_inode->server_eof = 0;
 cifs_inode->uniqueid = 0;
 cifs_inode->createtime = 0;
 cifs_inode->epoch = 0;
 spin_lock_init(&cifs_inode->open_file_lock);
 generate_random_uuid(cifs_inode->lease_key);






 INIT_LIST_HEAD(&cifs_inode->openFileList);
 INIT_LIST_HEAD(&cifs_inode->llist);
 return &cifs_inode->vfs_inode;
}
