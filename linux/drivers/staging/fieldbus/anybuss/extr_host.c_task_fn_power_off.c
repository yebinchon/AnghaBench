
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int power_on; int ind_ab; int irq; struct anybuss_client* client; } ;
struct anybuss_client {int (* on_online_changed ) (struct anybuss_client*,int) ;} ;
struct ab_task {int dummy; } ;


 int IND_AB_UPDATED ;
 int atomic_set (int *,int ) ;
 int disable_irq (int ) ;
 int reset_assert (struct anybuss_host*) ;
 int stub1 (struct anybuss_client*,int) ;

__attribute__((used)) static int task_fn_power_off(struct anybuss_host *cd,
        struct ab_task *t)
{
 struct anybuss_client *client = cd->client;

 if (!cd->power_on)
  return 0;
 disable_irq(cd->irq);
 reset_assert(cd);
 atomic_set(&cd->ind_ab, IND_AB_UPDATED);
 if (client->on_online_changed)
  client->on_online_changed(client, 0);
 cd->power_on = 0;
 return 0;
}
