
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
typedef int loff_t ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,int ) ;

__attribute__((used)) static void cifs_setsize(struct inode *inode, loff_t offset)
{
 struct cifsInodeInfo *cifs_i = CIFS_I(inode);

 spin_lock(&inode->i_lock);
 i_size_write(inode, offset);
 spin_unlock(&inode->i_lock);


 cifs_i->time = 0;
 truncate_pagecache(inode, offset);
}
