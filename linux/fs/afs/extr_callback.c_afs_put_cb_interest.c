
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_vol_interest {scalar_t__ usage; TYPE_1__* server; int srv_link; struct afs_vol_interest* vol_interest; int cb_vlink; } ;
struct afs_net {int dummy; } ;
struct afs_cb_interest {scalar_t__ usage; TYPE_1__* server; int srv_link; struct afs_cb_interest* vol_interest; int cb_vlink; } ;
struct TYPE_2__ {int cb_break_lock; } ;


 int afs_put_server (struct afs_net*,TYPE_1__*,int ) ;
 int afs_server_trace_put_cbi ;
 int hlist_del (int *) ;
 int hlist_del_init (int *) ;
 int hlist_unhashed (int *) ;
 int kfree_rcu (struct afs_vol_interest*,int ) ;
 int rcu ;
 scalar_t__ refcount_dec_and_test (scalar_t__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void afs_put_cb_interest(struct afs_net *net, struct afs_cb_interest *cbi)
{
 struct afs_vol_interest *vi;

 if (cbi && refcount_dec_and_test(&cbi->usage)) {
  if (!hlist_unhashed(&cbi->cb_vlink)) {
   write_lock(&cbi->server->cb_break_lock);

   hlist_del_init(&cbi->cb_vlink);
   vi = cbi->vol_interest;
   cbi->vol_interest = ((void*)0);
   if (--vi->usage == 0)
    hlist_del(&vi->srv_link);
   else
    vi = ((void*)0);

   write_unlock(&cbi->server->cb_break_lock);
   if (vi)
    kfree_rcu(vi, rcu);
   afs_put_server(net, cbi->server, afs_server_trace_put_cbi);
  }
  kfree_rcu(cbi, rcu);
 }
}
