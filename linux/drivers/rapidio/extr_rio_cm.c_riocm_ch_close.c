
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rio_channel {int id; int comp_close; int comp; } ;
typedef enum rio_cm_state { ____Placeholder_rio_cm_state } rio_cm_state ;
struct TYPE_3__ {int comm; } ;


 int CHOP ;
 int EINTR ;
 long ERESTARTSYS ;
 int ETIMEDOUT ;
 int RIO_CM_CONNECTED ;
 int RIO_CM_DESTROYING ;
 int WAIT ;
 int complete_all (int *) ;
 TYPE_1__* current ;
 int kfree (struct rio_channel*) ;
 unsigned long msecs_to_jiffies (int) ;
 int riocm_debug (int ,char*,int ,...) ;
 int riocm_exch (struct rio_channel*,int ) ;
 int riocm_put_channel (struct rio_channel*) ;
 int riocm_send_close (struct rio_channel*) ;
 int task_pid_nr (TYPE_1__*) ;
 long wait_for_completion_interruptible_timeout (int *,unsigned long) ;

__attribute__((used)) static int riocm_ch_close(struct rio_channel *ch)
{
 unsigned long tmo = msecs_to_jiffies(3000);
 enum rio_cm_state state;
 long wret;
 int ret = 0;

 riocm_debug(CHOP, "ch_%d by %s(%d)",
      ch->id, current->comm, task_pid_nr(current));

 state = riocm_exch(ch, RIO_CM_DESTROYING);
 if (state == RIO_CM_CONNECTED)
  riocm_send_close(ch);

 complete_all(&ch->comp);

 riocm_put_channel(ch);
 wret = wait_for_completion_interruptible_timeout(&ch->comp_close, tmo);

 riocm_debug(WAIT, "wait on %d returns %ld", ch->id, wret);

 if (wret == 0) {

  riocm_debug(CHOP, "%s(%d) timed out waiting for ch %d",
         current->comm, task_pid_nr(current), ch->id);
  ret = -ETIMEDOUT;
 } else if (wret == -ERESTARTSYS) {

  riocm_debug(CHOP, "%s(%d) wait for ch %d was interrupted",
   current->comm, task_pid_nr(current), ch->id);
  ret = -EINTR;
 }

 if (!ret) {
  riocm_debug(CHOP, "ch_%d resources released", ch->id);
  kfree(ch);
 } else {
  riocm_debug(CHOP, "failed to release ch_%d resources", ch->id);
 }

 return ret;
}
