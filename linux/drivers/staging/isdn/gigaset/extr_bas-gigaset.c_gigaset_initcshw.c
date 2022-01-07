
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {TYPE_1__ hw; } ;
struct bas_cardstate {int int_in_wq; int waitqueue; int timer_int_in; int timer_cmd_in; int timer_atrdy; int timer_ctrl; struct cardstate* cs; int lock; int int_in_buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IP_MSGSIZE ;
 int atrdy_timeout ;
 int cmd_in_timeout ;
 int init_waitqueue_head (int *) ;
 int int_in_resubmit ;
 int int_in_work ;
 int kfree (struct bas_cardstate*) ;
 int kmalloc (int ,int ) ;
 struct bas_cardstate* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int req_timeout ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int gigaset_initcshw(struct cardstate *cs)
{
 struct bas_cardstate *ucs;

 cs->hw.bas = ucs = kzalloc(sizeof(*ucs), GFP_KERNEL);
 if (!ucs) {
  pr_err("out of memory\n");
  return -ENOMEM;
 }
 ucs->int_in_buf = kmalloc(IP_MSGSIZE, GFP_KERNEL);
 if (!ucs->int_in_buf) {
  kfree(ucs);
  pr_err("out of memory\n");
  return -ENOMEM;
 }

 spin_lock_init(&ucs->lock);
 ucs->cs = cs;
 timer_setup(&ucs->timer_ctrl, req_timeout, 0);
 timer_setup(&ucs->timer_atrdy, atrdy_timeout, 0);
 timer_setup(&ucs->timer_cmd_in, cmd_in_timeout, 0);
 timer_setup(&ucs->timer_int_in, int_in_resubmit, 0);
 init_waitqueue_head(&ucs->waitqueue);
 INIT_WORK(&ucs->int_in_wq, int_in_work);

 return 0;
}
