
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct perf_ctx {TYPE_1__* ntb; } ;
typedef enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_5__ {int dev; } ;


 int ENODATA ;
 int PERF_MSG_CMD ;
 int PERF_MSG_HDATA ;
 int PERF_MSG_LDATA ;
 int dev_dbg (int *,char*,int,int) ;
 int hweight64 (int) ;
 int ntb_msg_clear_sts (TYPE_1__*,int) ;
 int ntb_msg_inbits (TYPE_1__*) ;
 int ntb_msg_read (TYPE_1__*,int*,int ) ;
 int ntb_msg_read_sts (TYPE_1__*) ;

__attribute__((used)) static int perf_msg_cmd_recv(struct perf_ctx *perf, int *pidx,
        enum perf_cmd *cmd, u64 *data)
{
 u64 inbits;
 u32 val;

 inbits = ntb_msg_inbits(perf->ntb);

 if (hweight64(ntb_msg_read_sts(perf->ntb) & inbits) < 3)
  return -ENODATA;

 val = ntb_msg_read(perf->ntb, pidx, PERF_MSG_CMD);
 *cmd = val;

 val = ntb_msg_read(perf->ntb, pidx, PERF_MSG_LDATA);
 *data = val;

 val = ntb_msg_read(perf->ntb, pidx, PERF_MSG_HDATA);
 *data |= (u64)val << 32;


 ntb_msg_clear_sts(perf->ntb, inbits);

 dev_dbg(&perf->ntb->dev, "CMD recv: %d 0x%llx\n", *cmd, *data);

 return 0;
}
