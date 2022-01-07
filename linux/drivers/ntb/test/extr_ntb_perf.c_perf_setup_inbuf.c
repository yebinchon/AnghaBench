
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct perf_peer {scalar_t__ inbuf_size; int inbuf_xlat; int gidx; int pidx; int inbuf; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; int gidx; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ALIGNED (int ,scalar_t__) ;
 int PERF_CMD_SXLAT ;
 int dev_err (int *,char*,...) ;
 int dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 int ntb_mw_get_align (TYPE_1__*,int ,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int ntb_mw_set_trans (TYPE_1__*,int ,int ,int ,scalar_t__) ;
 int perf_cmd_exec (struct perf_peer*,int ) ;
 int perf_free_inbuf (struct perf_peer*) ;
 scalar_t__ round_up (scalar_t__,scalar_t__) ;

__attribute__((used)) static int perf_setup_inbuf(struct perf_peer *peer)
{
 resource_size_t xlat_align, size_align, size_max;
 struct perf_ctx *perf = peer->perf;
 int ret;


 ret = ntb_mw_get_align(perf->ntb, peer->pidx, perf->gidx,
          &xlat_align, &size_align, &size_max);
 if (ret) {
  dev_err(&perf->ntb->dev, "Couldn't get inbuf restrictions\n");
  return ret;
 }

 if (peer->inbuf_size > size_max) {
  dev_err(&perf->ntb->dev, "Too big inbuf size %pa > %pa\n",
   &peer->inbuf_size, &size_max);
  return -EINVAL;
 }

 peer->inbuf_size = round_up(peer->inbuf_size, size_align);

 perf_free_inbuf(peer);

 peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
      &peer->inbuf_xlat, GFP_KERNEL);
 if (!peer->inbuf) {
  dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
   &peer->inbuf_size);
  return -ENOMEM;
 }
 if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {
  dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
  goto err_free_inbuf;
 }

 ret = ntb_mw_set_trans(perf->ntb, peer->pidx, peer->gidx,
          peer->inbuf_xlat, peer->inbuf_size);
 if (ret) {
  dev_err(&perf->ntb->dev, "Failed to set inbuf translation\n");
  goto err_free_inbuf;
 }






 (void)perf_cmd_exec(peer, PERF_CMD_SXLAT);

 return 0;

err_free_inbuf:
 perf_free_inbuf(peer);

 return ret;
}
