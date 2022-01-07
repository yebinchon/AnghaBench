
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tool_ctx {int inmsg_cnt; int peer_cnt; TYPE_3__* peers; TYPE_4__* ntb; TYPE_1__* inmsgs; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int outmsg_cnt; TYPE_2__* outmsgs; } ;
struct TYPE_6__ {int midx; int pidx; struct tool_ctx* tc; } ;
struct TYPE_5__ {int midx; int pidx; struct tool_ctx* tc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (int *,int,int,int ) ;
 void* ntb_msg_count (TYPE_4__*) ;

__attribute__((used)) static int tool_init_msgs(struct tool_ctx *tc)
{
 int midx, pidx;


 tc->inmsg_cnt = ntb_msg_count(tc->ntb);
 tc->inmsgs = devm_kcalloc(&tc->ntb->dev, tc->inmsg_cnt,
       sizeof(*tc->inmsgs), GFP_KERNEL);
 if (tc->inmsgs == ((void*)0))
  return -ENOMEM;

 for (midx = 0; midx < tc->inmsg_cnt; midx++) {
  tc->inmsgs[midx].midx = midx;
  tc->inmsgs[midx].pidx = -1;
  tc->inmsgs[midx].tc = tc;
 }


 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  tc->peers[pidx].outmsg_cnt = ntb_msg_count(tc->ntb);
  tc->peers[pidx].outmsgs =
   devm_kcalloc(&tc->ntb->dev, tc->peers[pidx].outmsg_cnt,
    sizeof(*tc->peers[pidx].outmsgs), GFP_KERNEL);
  if (tc->peers[pidx].outmsgs == ((void*)0))
   return -ENOMEM;

  for (midx = 0; midx < tc->peers[pidx].outmsg_cnt; midx++) {
   tc->peers[pidx].outmsgs[midx].midx = midx;
   tc->peers[pidx].outmsgs[midx].pidx = pidx;
   tc->peers[pidx].outmsgs[midx].tc = tc;
  }
 }

 return 0;
}
