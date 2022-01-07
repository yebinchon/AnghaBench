
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_ctx {TYPE_1__* ntb; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int ntb_msg_read_sts (TYPE_1__*) ;
 int perf_cmd_recv (struct perf_ctx*) ;

__attribute__((used)) static void perf_msg_event(void *ctx)
{
 struct perf_ctx *perf = ctx;

 dev_dbg(&perf->ntb->dev, "Msg status bits %#llx\n",
  ntb_msg_read_sts(perf->ntb));


 (void)perf_cmd_recv(perf);
}
