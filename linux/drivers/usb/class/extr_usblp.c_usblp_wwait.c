
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int flags; int wwait; int mut; int statusbuf; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINTR ;
 int ENOSPC ;
 int LP_ABORT ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 scalar_t__ schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int usblp_check_status (struct usblp*,int) ;
 int usblp_read_status (struct usblp*,int ) ;
 int usblp_wtest (struct usblp*,int) ;
 int waita ;

__attribute__((used)) static int usblp_wwait(struct usblp *usblp, int nonblock)
{
 DECLARE_WAITQUEUE(waita, current);
 int rc;
 int err = 0;

 add_wait_queue(&usblp->wwait, &waita);
 for (;;) {
  if (mutex_lock_interruptible(&usblp->mut)) {
   rc = -EINTR;
   break;
  }
  set_current_state(TASK_INTERRUPTIBLE);
  rc = usblp_wtest(usblp, nonblock);
  mutex_unlock(&usblp->mut);
  if (rc <= 0)
   break;

  if (schedule_timeout(msecs_to_jiffies(1500)) == 0) {
   if (usblp->flags & LP_ABORT) {
    err = usblp_check_status(usblp, err);
    if (err == 1) {
     rc = -ENOSPC;
     break;
    }
   } else {

    mutex_lock(&usblp->mut);
    usblp_read_status(usblp, usblp->statusbuf);
    mutex_unlock(&usblp->mut);
   }
  }
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&usblp->wwait, &waita);
 return rc;
}
