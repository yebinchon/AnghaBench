
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_peer {int sts; int outbuf_size; int outbuf_xlat; int gidx; int pidx; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; } ;
struct TYPE_2__ {int dev; } ;


 int PERF_STS_DONE ;
 int dev_err (int *,char*) ;
 int ntb_peer_mw_set_trans (TYPE_1__*,int ,int ,int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int perf_setup_outbuf(struct perf_peer *peer)
{
 struct perf_ctx *perf = peer->perf;
 int ret;


 ret = ntb_peer_mw_set_trans(perf->ntb, peer->pidx, peer->gidx,
        peer->outbuf_xlat, peer->outbuf_size);
 if (ret) {
  dev_err(&perf->ntb->dev, "Failed to set outbuf translation\n");
  return ret;
 }


 set_bit(PERF_STS_DONE, &peer->sts);

 return 0;
}
