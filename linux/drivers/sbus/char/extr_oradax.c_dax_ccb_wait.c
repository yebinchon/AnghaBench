
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dax_ctx {scalar_t__ ca_buf_ra; TYPE_1__* ca_buf; } ;
struct dax_cca {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 scalar_t__ CCA_STAT_NOT_COMPLETED ;
 int DAX_CCB_RETRIES ;
 int DAX_CCB_USEC ;
 int dax_ccb_kill (scalar_t__,int *) ;
 int dax_dbg (char*,int,...) ;
 int udelay (int ) ;

__attribute__((used)) static void dax_ccb_wait(struct dax_ctx *ctx, int idx)
{
 int ret, nretries;
 u16 kill_res;

 dax_dbg("idx=%d", idx);

 for (nretries = 0; nretries < DAX_CCB_RETRIES; nretries++) {
  if (ctx->ca_buf[idx].status == CCA_STAT_NOT_COMPLETED)
   udelay(DAX_CCB_USEC);
  else
   return;
 }
 dax_dbg("ctx (%p): CCB[%d] timed out, wait usec=%d, retries=%d. Killing ccb",
  (void *)ctx, idx, DAX_CCB_USEC, DAX_CCB_RETRIES);

 ret = dax_ccb_kill(ctx->ca_buf_ra + idx * sizeof(struct dax_cca),
      &kill_res);
 dax_dbg("Kill CCB[%d] %s", idx, ret ? "failed" : "succeeded");
}
