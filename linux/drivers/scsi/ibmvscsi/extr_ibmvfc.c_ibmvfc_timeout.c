
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ibmvfc_host {int dev; } ;
struct ibmvfc_event {struct ibmvfc_host* vhost; } ;


 int dev_err (int ,char*,struct ibmvfc_event*) ;
 struct ibmvfc_event* evt ;
 struct ibmvfc_event* from_timer (int ,struct timer_list*,int ) ;
 int ibmvfc_reset_host (struct ibmvfc_host*) ;
 int timer ;

__attribute__((used)) static void ibmvfc_timeout(struct timer_list *t)
{
 struct ibmvfc_event *evt = from_timer(evt, t, timer);
 struct ibmvfc_host *vhost = evt->vhost;
 dev_err(vhost->dev, "Command timed out (%p). Resetting connection\n", evt);
 ibmvfc_reset_host(vhost);
}
