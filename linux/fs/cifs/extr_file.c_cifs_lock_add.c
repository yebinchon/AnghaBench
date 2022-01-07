
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifsLockInfo {int llist; } ;
struct cifsInodeInfo {int lock_sem; } ;
struct cifsFileInfo {TYPE_1__* llist; int dentry; } ;
struct TYPE_2__ {int locks; } ;


 struct cifsInodeInfo* CIFS_I (int ) ;
 int cifs_down_write (int *) ;
 int d_inode (int ) ;
 int list_add_tail (int *,int *) ;
 int up_write (int *) ;

__attribute__((used)) static void
cifs_lock_add(struct cifsFileInfo *cfile, struct cifsLockInfo *lock)
{
 struct cifsInodeInfo *cinode = CIFS_I(d_inode(cfile->dentry));
 cifs_down_write(&cinode->lock_sem);
 list_add_tail(&lock->llist, &cfile->llist->locks);
 up_write(&cinode->lock_sem);
}
