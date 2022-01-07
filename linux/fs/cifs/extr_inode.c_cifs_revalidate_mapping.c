
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;


 TYPE_1__* CIFS_I (struct inode*) ;
 int CIFS_INO_INVALID_MAPPING ;
 int CIFS_INO_LOCK ;
 int TASK_KILLABLE ;
 int cifs_invalidate_mapping (struct inode*) ;
 int cifs_wait_bit_killable ;
 int clear_bit_unlock (int ,unsigned long*) ;
 int set_bit (int ,unsigned long*) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_and_clear_bit (int ,unsigned long*) ;
 int wait_on_bit_lock_action (unsigned long*,int ,int ,int ) ;
 int wake_up_bit (unsigned long*,int ) ;

int
cifs_revalidate_mapping(struct inode *inode)
{
 int rc;
 unsigned long *flags = &CIFS_I(inode)->flags;

 rc = wait_on_bit_lock_action(flags, CIFS_INO_LOCK, cifs_wait_bit_killable,
         TASK_KILLABLE);
 if (rc)
  return rc;

 if (test_and_clear_bit(CIFS_INO_INVALID_MAPPING, flags)) {
  rc = cifs_invalidate_mapping(inode);
  if (rc)
   set_bit(CIFS_INO_INVALID_MAPPING, flags);
 }

 clear_bit_unlock(CIFS_INO_LOCK, flags);
 smp_mb__after_atomic();
 wake_up_bit(flags, CIFS_INO_LOCK);

 return rc;
}
