
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; } ;
struct cifsLockInfo {TYPE_2__ blist; int block_q; TYPE_2__ llist; int flags; int type; int length; int offset; } ;
struct cifsInodeInfo {int lock_sem; scalar_t__ can_cache_brlcks; } ;
struct cifsFileInfo {TYPE_1__* llist; int dentry; } ;
struct TYPE_5__ {TYPE_2__ locks; } ;


 struct cifsInodeInfo* CIFS_I (int ) ;
 int CIFS_LOCK_OP ;
 int EACCES ;
 int cifs_down_write (int *) ;
 int cifs_find_lock_conflict (struct cifsFileInfo*,int ,int ,int ,int ,struct cifsLockInfo**,int ) ;
 int d_inode (int ) ;
 int list_add_tail (TYPE_2__*,TYPE_2__*) ;
 int list_del_init (TYPE_2__*) ;
 int up_write (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
cifs_lock_add_if(struct cifsFileInfo *cfile, struct cifsLockInfo *lock,
   bool wait)
{
 struct cifsLockInfo *conf_lock;
 struct cifsInodeInfo *cinode = CIFS_I(d_inode(cfile->dentry));
 bool exist;
 int rc = 0;

try_again:
 exist = 0;
 cifs_down_write(&cinode->lock_sem);

 exist = cifs_find_lock_conflict(cfile, lock->offset, lock->length,
     lock->type, lock->flags, &conf_lock,
     CIFS_LOCK_OP);
 if (!exist && cinode->can_cache_brlcks) {
  list_add_tail(&lock->llist, &cfile->llist->locks);
  up_write(&cinode->lock_sem);
  return rc;
 }

 if (!exist)
  rc = 1;
 else if (!wait)
  rc = -EACCES;
 else {
  list_add_tail(&lock->blist, &conf_lock->blist);
  up_write(&cinode->lock_sem);
  rc = wait_event_interruptible(lock->block_q,
     (lock->blist.prev == &lock->blist) &&
     (lock->blist.next == &lock->blist));
  if (!rc)
   goto try_again;
  cifs_down_write(&cinode->lock_sem);
  list_del_init(&lock->blist);
 }

 up_write(&cinode->lock_sem);
 return rc;
}
