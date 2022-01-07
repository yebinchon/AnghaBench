
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_server_list {int nr_servers; TYPE_1__* servers; } ;
struct afs_net {int dummy; } ;
struct TYPE_2__ {int * cb_interest; } ;


 int afs_put_cb_interest (struct afs_net*,int *) ;

void afs_clear_callback_interests(struct afs_net *net, struct afs_server_list *slist)
{
 int i;

 for (i = 0; i < slist->nr_servers; i++) {
  afs_put_cb_interest(net, slist->servers[i].cb_interest);
  slist->servers[i].cb_interest = ((void*)0);
 }
}
