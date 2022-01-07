
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_peer {int * inbuf; int inbuf_xlat; int inbuf_size; TYPE_1__* perf; int gidx; int pidx; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* ntb; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int ntb_mw_clear_trans (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void perf_free_inbuf(struct perf_peer *peer)
{
 if (!peer->inbuf)
  return;

 (void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
 dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
     peer->inbuf, peer->inbuf_xlat);
 peer->inbuf = ((void*)0);
}
