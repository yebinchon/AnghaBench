
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ open_cnt; int detaching; int open_rel_lock; scalar_t__ exclude; int open_wait; } ;
typedef TYPE_1__ Sg_device ;


 int ENODEV ;
 int O_EXCL ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
open_wait(Sg_device *sdp, int flags)
{
 int retval = 0;

 if (flags & O_EXCL) {
  while (sdp->open_cnt > 0) {
   mutex_unlock(&sdp->open_rel_lock);
   retval = wait_event_interruptible(sdp->open_wait,
     (atomic_read(&sdp->detaching) ||
      !sdp->open_cnt));
   mutex_lock(&sdp->open_rel_lock);

   if (retval)
    return retval;
   if (atomic_read(&sdp->detaching))
    return -ENODEV;
  }
 } else {
  while (sdp->exclude) {
   mutex_unlock(&sdp->open_rel_lock);
   retval = wait_event_interruptible(sdp->open_wait,
     (atomic_read(&sdp->detaching) ||
      !sdp->exclude));
   mutex_lock(&sdp->open_rel_lock);

   if (retval)
    return retval;
   if (atomic_read(&sdp->detaching))
    return -ENODEV;
  }
 }

 return retval;
}
