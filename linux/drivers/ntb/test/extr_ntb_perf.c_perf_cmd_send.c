
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_peer {struct perf_ctx* perf; } ;
struct perf_ctx {int (* cmd_send ) (struct perf_peer*,int,int ) ;TYPE_1__* ntb; } ;
typedef enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int PERF_CMD_SSIZE ;
 int PERF_CMD_SXLAT ;
 int dev_err (int *,char*) ;
 int stub1 (struct perf_peer*,int,int ) ;

__attribute__((used)) static int perf_cmd_send(struct perf_peer *peer, enum perf_cmd cmd, u64 data)
{
 struct perf_ctx *perf = peer->perf;

 if (cmd == PERF_CMD_SSIZE || cmd == PERF_CMD_SXLAT)
  return perf->cmd_send(peer, cmd, data);

 dev_err(&perf->ntb->dev, "Send invalid command\n");
 return -EINVAL;
}
