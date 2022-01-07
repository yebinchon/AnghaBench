
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int SCLP_REQ_FAILED ;
 TYPE_1__ sclp_init_req ;
 int sclp_lock ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 scalar_t__ sclp_running_state_running ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
sclp_check_timeout(struct timer_list *unused)
{
 unsigned long flags;

 spin_lock_irqsave(&sclp_lock, flags);
 if (sclp_running_state == sclp_running_state_running) {
  sclp_init_req.status = SCLP_REQ_FAILED;
  sclp_running_state = sclp_running_state_idle;
 }
 spin_unlock_irqrestore(&sclp_lock, flags);
}
