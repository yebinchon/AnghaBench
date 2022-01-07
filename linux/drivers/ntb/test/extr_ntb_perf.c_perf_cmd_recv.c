
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct perf_peer {void* outbuf_xlat; void* inbuf_size; } ;
struct perf_ctx {int (* cmd_recv ) (struct perf_ctx*,int*,int*,void**) ;TYPE_1__* ntb; struct perf_peer* peers; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENODATA ;
 int PERF_CMD_RSIZE ;
 int PERF_CMD_RXLAT ;


 int dev_err (int *,char*) ;
 int perf_cmd_exec (struct perf_peer*,int ) ;
 int stub1 (struct perf_ctx*,int*,int*,void**) ;

__attribute__((used)) static int perf_cmd_recv(struct perf_ctx *perf)
{
 struct perf_peer *peer;
 int ret, pidx, cmd;
 u64 data;

 while (!(ret = perf->cmd_recv(perf, &pidx, &cmd, &data))) {
  peer = &perf->peers[pidx];

  switch (cmd) {
  case 129:
   peer->inbuf_size = data;
   return perf_cmd_exec(peer, PERF_CMD_RSIZE);
  case 128:
   peer->outbuf_xlat = data;
   return perf_cmd_exec(peer, PERF_CMD_RXLAT);
  default:
   dev_err(&perf->ntb->dev, "Recv invalid command\n");
   return -EINVAL;
  }
 }


 return ret == -ENODATA ? 0 : ret;
}
