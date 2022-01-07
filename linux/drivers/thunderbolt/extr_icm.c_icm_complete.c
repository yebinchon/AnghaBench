
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb {int wq; int root_switch; TYPE_1__* nhi; } ;
struct icm {int rescan_work; } ;
struct TYPE_2__ {scalar_t__ going_away; } ;


 int __icm_driver_ready (struct tb*,int *,int *,int *) ;
 int icm_unplug_children (int ) ;
 int icm_veto_end (struct tb*) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct icm* tb_priv (struct tb*) ;

__attribute__((used)) static void icm_complete(struct tb *tb)
{
 struct icm *icm = tb_priv(tb);

 if (tb->nhi->going_away)
  return;







 icm_veto_end(tb);
 icm_unplug_children(tb->root_switch);





 __icm_driver_ready(tb, ((void*)0), ((void*)0), ((void*)0));






 queue_delayed_work(tb->wq, &icm->rescan_work, msecs_to_jiffies(500));
}
