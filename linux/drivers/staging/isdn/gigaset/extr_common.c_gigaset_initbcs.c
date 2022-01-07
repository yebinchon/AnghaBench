
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {TYPE_1__* ops; int ignoreframes; } ;
struct bc_state {int channel; int use_count; scalar_t__ apconnstate; int * ap; int aplock; int ** commands; int ignore; scalar_t__ busy; scalar_t__ chstate; struct cardstate* cs; scalar_t__ inputstate; int rx_fcs; int * rx_skb; scalar_t__ rx_bufsize; scalar_t__ emptycount; int at_state; scalar_t__ trans_up; scalar_t__ trans_down; scalar_t__ corrupted; int squeue; int * tx_skb; } ;
struct TYPE_2__ {int (* initbcshw ) (struct bc_state*) ;} ;


 int AT_NUM ;
 int DEBUG_INIT ;
 int PPP_INITFCS ;
 int gig_dbg (int ,char*,int) ;
 int gigaset_at_init (int *,struct bc_state*,struct cardstate*,int) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct bc_state*) ;

__attribute__((used)) static int gigaset_initbcs(struct bc_state *bcs, struct cardstate *cs,
      int channel)
{
 int i;

 bcs->tx_skb = ((void*)0);

 skb_queue_head_init(&bcs->squeue);

 bcs->corrupted = 0;
 bcs->trans_down = 0;
 bcs->trans_up = 0;

 gig_dbg(DEBUG_INIT, "setting up bcs[%d]->at_state", channel);
 gigaset_at_init(&bcs->at_state, bcs, cs, -1);





 bcs->rx_bufsize = 0;
 bcs->rx_skb = ((void*)0);
 bcs->rx_fcs = PPP_INITFCS;
 bcs->inputstate = 0;
 bcs->channel = channel;
 bcs->cs = cs;

 bcs->chstate = 0;
 bcs->use_count = 1;
 bcs->busy = 0;
 bcs->ignore = cs->ignoreframes;

 for (i = 0; i < AT_NUM; ++i)
  bcs->commands[i] = ((void*)0);

 spin_lock_init(&bcs->aplock);
 bcs->ap = ((void*)0);
 bcs->apconnstate = 0;

 gig_dbg(DEBUG_INIT, "  setting up bcs[%d]->hw", channel);
 return cs->ops->initbcshw(bcs);
}
