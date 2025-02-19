
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tool_ctx {int outmw_cnt; int peer_cnt; TYPE_4__* outmws; TYPE_3__* peers; TYPE_5__* ntb; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int widx; int pidx; struct tool_ctx* tc; } ;
struct TYPE_9__ {int inmw_cnt; int outmw_cnt; TYPE_2__* outmws; TYPE_1__* inmws; } ;
struct TYPE_8__ {int pidx; TYPE_4__* mw; } ;
struct TYPE_7__ {int widx; int pidx; struct tool_ctx* tc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (int *,int,int,int ) ;
 int ntb_mw_count (TYPE_5__*,int) ;
 void* ntb_peer_mw_count (TYPE_5__*) ;

__attribute__((used)) static int tool_init_mws(struct tool_ctx *tc)
{
 int widx, pidx;


 tc->outmw_cnt = ntb_peer_mw_count(tc->ntb);
 tc->outmws = devm_kcalloc(&tc->ntb->dev, tc->outmw_cnt,
      sizeof(*tc->outmws), GFP_KERNEL);
 if (tc->outmws == ((void*)0))
  return -ENOMEM;

 for (widx = 0; widx < tc->outmw_cnt; widx++) {
  tc->outmws[widx].widx = widx;
  tc->outmws[widx].pidx = -1;
  tc->outmws[widx].tc = tc;
 }


 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  tc->peers[pidx].inmw_cnt = ntb_mw_count(tc->ntb, pidx);
  tc->peers[pidx].inmws =
   devm_kcalloc(&tc->ntb->dev, tc->peers[pidx].inmw_cnt,
        sizeof(*tc->peers[pidx].inmws), GFP_KERNEL);
  if (tc->peers[pidx].inmws == ((void*)0))
   return -ENOMEM;

  for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++) {
   tc->peers[pidx].inmws[widx].widx = widx;
   tc->peers[pidx].inmws[widx].pidx = pidx;
   tc->peers[pidx].inmws[widx].tc = tc;
  }

  tc->peers[pidx].outmw_cnt = ntb_peer_mw_count(tc->ntb);
  tc->peers[pidx].outmws =
   devm_kcalloc(&tc->ntb->dev, tc->peers[pidx].outmw_cnt,
       sizeof(*tc->peers[pidx].outmws), GFP_KERNEL);

  for (widx = 0; widx < tc->peers[pidx].outmw_cnt; widx++) {
   tc->peers[pidx].outmws[widx].pidx = pidx;
   tc->peers[pidx].outmws[widx].mw = &tc->outmws[widx];
  }
 }

 return 0;
}
