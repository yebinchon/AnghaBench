
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_peer {int gidx; int pidx; TYPE_1__* perf; } ;
struct TYPE_2__ {int ntb; } ;


 int ntb_peer_mw_clear_trans (int ,int ,int ) ;

__attribute__((used)) static void perf_free_outbuf(struct perf_peer *peer)
{
 (void)ntb_peer_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
}
