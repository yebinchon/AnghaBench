
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tool_ctx {int peer_cnt; TYPE_2__* peers; TYPE_1__* ntb; } ;
struct TYPE_4__ {int pidx; struct tool_ctx* tc; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* devm_kcalloc (int *,int,int,int ) ;
 int ntb_peer_port_count (TYPE_1__*) ;

__attribute__((used)) static int tool_init_peers(struct tool_ctx *tc)
{
 int pidx;

 tc->peer_cnt = ntb_peer_port_count(tc->ntb);
 tc->peers = devm_kcalloc(&tc->ntb->dev, tc->peer_cnt,
     sizeof(*tc->peers), GFP_KERNEL);
 if (tc->peers == ((void*)0))
  return -ENOMEM;

 for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
  tc->peers[pidx].pidx = pidx;
  tc->peers[pidx].tc = tc;
 }

 return 0;
}
