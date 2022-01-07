
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tool_ctx {int inspad_cnt; int peer_cnt; TYPE_3__* peers; TYPE_4__* ntb; TYPE_1__* inspads; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int outspad_cnt; TYPE_2__* outspads; } ;
struct TYPE_6__ {int sidx; int pidx; struct tool_ctx* tc; } ;
struct TYPE_5__ {int sidx; int pidx; struct tool_ctx* tc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (int *,int,int,int ) ;
 void* ntb_spad_count (TYPE_4__*) ;

__attribute__((used)) static int tool_init_spads(struct tool_ctx *tc)
{
 int sidx, pidx;


 tc->inspad_cnt = ntb_spad_count(tc->ntb);
 tc->inspads = devm_kcalloc(&tc->ntb->dev, tc->inspad_cnt,
       sizeof(*tc->inspads), GFP_KERNEL);
 if (tc->inspads == ((void*)0))
  return -ENOMEM;

 for (sidx = 0; sidx < tc->inspad_cnt; sidx++) {
  tc->inspads[sidx].sidx = sidx;
  tc->inspads[sidx].pidx = -1;
  tc->inspads[sidx].tc = tc;
 }


 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  tc->peers[pidx].outspad_cnt = ntb_spad_count(tc->ntb);
  tc->peers[pidx].outspads =
   devm_kcalloc(&tc->ntb->dev, tc->peers[pidx].outspad_cnt,
    sizeof(*tc->peers[pidx].outspads), GFP_KERNEL);
  if (tc->peers[pidx].outspads == ((void*)0))
   return -ENOMEM;

  for (sidx = 0; sidx < tc->peers[pidx].outspad_cnt; sidx++) {
   tc->peers[pidx].outspads[sidx].sidx = sidx;
   tc->peers[pidx].outspads[sidx].pidx = pidx;
   tc->peers[pidx].outspads[sidx].tc = tc;
  }
 }

 return 0;
}
