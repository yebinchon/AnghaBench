
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int status; scalar_t__ timedout; } ;
typedef TYPE_1__ uioc_t ;
struct TYPE_12__ {scalar_t__ function; scalar_t__ expires; } ;
struct uioc_timeout {TYPE_3__ timer; TYPE_1__* uioc; } ;
struct TYPE_11__ {int (* issue_uioc ) (int ,TYPE_1__*,int ) ;int timeout; scalar_t__ quiescent; int drvr_data; } ;
typedef TYPE_2__ mraid_mmadp_t ;


 int ENODATA ;
 int HZ ;
 int IOCTL_ISSUE ;
 int add_timer (TYPE_3__*) ;
 int del_timer_sync (TYPE_3__*) ;
 int destroy_timer_on_stack (TYPE_3__*) ;
 scalar_t__ jiffies ;
 int lld_timedout ;
 int stub1 (int ,TYPE_1__*,int ) ;
 int timer_setup_on_stack (TYPE_3__*,int ,int ) ;
 int wait_event (int ,int) ;
 int wait_q ;

__attribute__((used)) static int
lld_ioctl(mraid_mmadp_t *adp, uioc_t *kioc)
{
 int rval;
 struct uioc_timeout timeout = { };

 kioc->status = -ENODATA;
 rval = adp->issue_uioc(adp->drvr_data, kioc, IOCTL_ISSUE);

 if (rval) return rval;




 if (adp->timeout > 0) {
  timeout.uioc = kioc;
  timer_setup_on_stack(&timeout.timer, lld_timedout, 0);

  timeout.timer.expires = jiffies + adp->timeout * HZ;

  add_timer(&timeout.timer);
 }





 wait_event(wait_q, (kioc->status != -ENODATA));
 if (timeout.timer.function) {
  del_timer_sync(&timeout.timer);
  destroy_timer_on_stack(&timeout.timer);
 }





 if (kioc->timedout) {
  adp->quiescent = 0;
 }

 return kioc->status;
}
