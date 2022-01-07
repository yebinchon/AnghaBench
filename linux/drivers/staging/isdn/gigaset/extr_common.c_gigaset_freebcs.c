
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bc_state {int ** commands; int * rx_skb; int channel; int at_state; TYPE_1__* cs; } ;
struct TYPE_4__ {int (* freebcshw ) (struct bc_state*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int AT_NUM ;
 int DEBUG_INIT ;
 int clear_at_state (int *) ;
 int dev_kfree_skb (int *) ;
 int gig_dbg (int ,char*,int ) ;
 int kfree (int *) ;
 int stub1 (struct bc_state*) ;

__attribute__((used)) static void gigaset_freebcs(struct bc_state *bcs)
{
 int i;

 gig_dbg(DEBUG_INIT, "freeing bcs[%d]->hw", bcs->channel);
 bcs->cs->ops->freebcshw(bcs);

 gig_dbg(DEBUG_INIT, "clearing bcs[%d]->at_state", bcs->channel);
 clear_at_state(&bcs->at_state);
 gig_dbg(DEBUG_INIT, "freeing bcs[%d]->skb", bcs->channel);
 dev_kfree_skb(bcs->rx_skb);
 bcs->rx_skb = ((void*)0);

 for (i = 0; i < AT_NUM; ++i) {
  kfree(bcs->commands[i]);
  bcs->commands[i] = ((void*)0);
 }
}
