
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_peer {scalar_t__ outbuf_size; int pidx; struct perf_ctx* perf; int outbuf; } ;
struct perf_ctx {TYPE_1__* ntb; int gidx; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int dev_warn (int *,char*,int ,scalar_t__*) ;
 int devm_ioremap_wc (int *,int ,scalar_t__) ;
 scalar_t__ max_mw_size ;
 int ntb_peer_mw_get_addr (TYPE_1__*,int ,int *,scalar_t__*) ;

__attribute__((used)) static int perf_setup_peer_mw(struct perf_peer *peer)
{
 struct perf_ctx *perf = peer->perf;
 phys_addr_t phys_addr;
 int ret;


 ret = ntb_peer_mw_get_addr(perf->ntb, perf->gidx, &phys_addr,
       &peer->outbuf_size);
 if (ret)
  return ret;

 peer->outbuf = devm_ioremap_wc(&perf->ntb->dev, phys_addr,
     peer->outbuf_size);
 if (!peer->outbuf)
  return -ENOMEM;

 if (max_mw_size && peer->outbuf_size > max_mw_size) {
  peer->outbuf_size = max_mw_size;
  dev_warn(&peer->perf->ntb->dev,
   "Peer %d outbuf reduced to %pa\n", peer->pidx,
   &peer->outbuf_size);
 }

 return 0;
}
