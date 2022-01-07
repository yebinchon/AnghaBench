
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct perf_ctx {scalar_t__ pcnt; TYPE_1__* ntb; int cmd_recv; int cmd_send; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int GENMASK_ULL (scalar_t__,int ) ;
 scalar_t__ PERF_MSG_CNT ;
 scalar_t__ PERF_SPAD_CNT (scalar_t__) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int ntb_db_valid_mask (TYPE_1__*) ;
 scalar_t__ ntb_msg_count (TYPE_1__*) ;
 scalar_t__ ntb_peer_mw_count (TYPE_1__*) ;
 scalar_t__ ntb_spad_count (TYPE_1__*) ;
 int perf_msg_cmd_recv ;
 int perf_msg_cmd_send ;
 int perf_spad_cmd_recv ;
 int perf_spad_cmd_send ;

__attribute__((used)) static int perf_init_service(struct perf_ctx *perf)
{
 u64 mask;

 if (ntb_peer_mw_count(perf->ntb) < perf->pcnt + 1) {
  dev_err(&perf->ntb->dev, "Not enough memory windows\n");
  return -EINVAL;
 }

 if (ntb_msg_count(perf->ntb) >= PERF_MSG_CNT) {
  perf->cmd_send = perf_msg_cmd_send;
  perf->cmd_recv = perf_msg_cmd_recv;

  dev_dbg(&perf->ntb->dev, "Message service initialized\n");

  return 0;
 }

 dev_dbg(&perf->ntb->dev, "Message service unsupported\n");

 mask = GENMASK_ULL(perf->pcnt, 0);
 if (ntb_spad_count(perf->ntb) >= PERF_SPAD_CNT(perf->pcnt) &&
     (ntb_db_valid_mask(perf->ntb) & mask) == mask) {
  perf->cmd_send = perf_spad_cmd_send;
  perf->cmd_recv = perf_spad_cmd_recv;

  dev_dbg(&perf->ntb->dev, "Scratchpad service initialized\n");

  return 0;
 }

 dev_dbg(&perf->ntb->dev, "Scratchpad service unsupported\n");

 dev_err(&perf->ntb->dev, "Command services unsupported\n");

 return -EINVAL;
}
