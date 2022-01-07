
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_server_list {int nr_servers; TYPE_1__* servers; int usage; } ;
struct afs_net {int dummy; } ;
struct TYPE_2__ {int server; int cb_interest; } ;


 int afs_put_cb_interest (struct afs_net*,int ) ;
 int afs_put_server (struct afs_net*,int ,int ) ;
 int afs_server_trace_put_slist ;
 int kfree (struct afs_server_list*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void afs_put_serverlist(struct afs_net *net, struct afs_server_list *slist)
{
 int i;

 if (slist && refcount_dec_and_test(&slist->usage)) {
  for (i = 0; i < slist->nr_servers; i++) {
   afs_put_cb_interest(net, slist->servers[i].cb_interest);
   afs_put_server(net, slist->servers[i].server,
           afs_server_trace_put_slist);
  }
  kfree(slist);
 }
}
