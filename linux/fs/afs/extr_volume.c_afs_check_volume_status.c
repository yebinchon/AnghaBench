
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct key {int dummy; } ;
struct afs_volume {scalar_t__ update_at; int flags; } ;


 int AFS_VOLUME_NEEDS_UPDATE ;
 int AFS_VOLUME_UPDATING ;
 int AFS_VOLUME_WAIT ;
 int ERESTARTSYS ;
 int ESTALE ;
 int TASK_INTERRUPTIBLE ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int afs_update_volume_status (struct afs_volume*,struct key*) ;
 int clear_bit_unlock (int ,int *) ;
 scalar_t__ ktime_get_real_seconds () ;
 int set_bit (int ,int *) ;
 int test_and_set_bit_lock (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ) ;
 int wake_up_bit (int *,int ) ;

int afs_check_volume_status(struct afs_volume *volume, struct key *key)
{
 time64_t now = ktime_get_real_seconds();
 int ret, retries = 0;

 _enter("");

 if (volume->update_at <= now)
  set_bit(AFS_VOLUME_NEEDS_UPDATE, &volume->flags);

retry:
 if (!test_bit(AFS_VOLUME_NEEDS_UPDATE, &volume->flags) &&
     !test_bit(AFS_VOLUME_WAIT, &volume->flags)) {
  _leave(" = 0");
  return 0;
 }

 if (!test_and_set_bit_lock(AFS_VOLUME_UPDATING, &volume->flags)) {
  ret = afs_update_volume_status(volume, key);
  clear_bit_unlock(AFS_VOLUME_WAIT, &volume->flags);
  clear_bit_unlock(AFS_VOLUME_UPDATING, &volume->flags);
  wake_up_bit(&volume->flags, AFS_VOLUME_WAIT);
  _leave(" = %d", ret);
  return ret;
 }

 if (!test_bit(AFS_VOLUME_WAIT, &volume->flags)) {
  _leave(" = 0 [no wait]");
  return 0;
 }

 ret = wait_on_bit(&volume->flags, AFS_VOLUME_WAIT, TASK_INTERRUPTIBLE);
 if (ret == -ERESTARTSYS) {
  _leave(" = %d", ret);
  return ret;
 }

 retries++;
 if (retries == 4) {
  _leave(" = -ESTALE");
  return -ESTALE;
 }
 goto retry;
}
