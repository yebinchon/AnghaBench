
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {scalar_t__ writers; int writers_lock; int flags; } ;


 int CIFS_INODE_PENDING_WRITERS ;
 int clear_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_bit (int *,int ) ;

void cifs_put_writer(struct cifsInodeInfo *cinode)
{
 spin_lock(&cinode->writers_lock);
 cinode->writers--;
 if (cinode->writers == 0) {
  clear_bit(CIFS_INODE_PENDING_WRITERS, &cinode->flags);
  wake_up_bit(&cinode->flags, CIFS_INODE_PENDING_WRITERS);
 }
 spin_unlock(&cinode->writers_lock);
}
