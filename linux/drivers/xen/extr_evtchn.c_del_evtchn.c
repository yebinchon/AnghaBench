
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int node; } ;
struct per_user_data {int evtchns; int nr_evtchns; } ;


 int kfree (struct user_evtchn*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void del_evtchn(struct per_user_data *u, struct user_evtchn *evtchn)
{
 u->nr_evtchns--;
 rb_erase(&evtchn->node, &u->evtchns);
 kfree(evtchn);
}
