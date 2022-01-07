
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {scalar_t__ writers; int writers_lock; int flags; } ;


 int CIFS_INODE_PENDING_OPLOCK_BREAK ;
 int CIFS_INODE_PENDING_WRITERS ;
 int TASK_KILLABLE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ) ;
 int wake_up_bit (int *,int ) ;

int cifs_get_writer(struct cifsInodeInfo *cinode)
{
 int rc;

start:
 rc = wait_on_bit(&cinode->flags, CIFS_INODE_PENDING_OPLOCK_BREAK,
    TASK_KILLABLE);
 if (rc)
  return rc;

 spin_lock(&cinode->writers_lock);
 if (!cinode->writers)
  set_bit(CIFS_INODE_PENDING_WRITERS, &cinode->flags);
 cinode->writers++;

 if (test_bit(CIFS_INODE_PENDING_OPLOCK_BREAK, &cinode->flags)) {
  cinode->writers--;
  if (cinode->writers == 0) {
   clear_bit(CIFS_INODE_PENDING_WRITERS, &cinode->flags);
   wake_up_bit(&cinode->flags, CIFS_INODE_PENDING_WRITERS);
  }
  spin_unlock(&cinode->writers_lock);
  goto start;
 }
 spin_unlock(&cinode->writers_lock);
 return 0;
}
