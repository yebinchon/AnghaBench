
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int wq; int qlock; int powerq; int qcache; } ;
struct anybuss_client {struct anybuss_host* host; } ;
struct ab_task {int dummy; } ;


 int ENOMEM ;
 struct ab_task* ab_task_create_get (int ,int ) ;
 int ab_task_enqueue_wait (struct ab_task*,int ,int *,int *) ;
 int ab_task_put (struct ab_task*) ;
 int task_fn_power_off ;
 int task_fn_power_on ;

int anybuss_set_power(struct anybuss_client *client, bool power_on)
{
 struct anybuss_host *cd = client->host;
 struct ab_task *t;
 int err;

 t = ab_task_create_get(cd->qcache, power_on ?
    task_fn_power_on : task_fn_power_off);
 if (!t)
  return -ENOMEM;
 err = ab_task_enqueue_wait(t, cd->powerq, &cd->qlock, &cd->wq);
 ab_task_put(t);
 return err;
}
