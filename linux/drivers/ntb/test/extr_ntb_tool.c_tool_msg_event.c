
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tool_ctx {int msg_wq; TYPE_1__* ntb; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int ntb_msg_read_sts (TYPE_1__*) ;
 int wake_up (int *) ;

__attribute__((used)) static void tool_msg_event(void *ctx)
{
 struct tool_ctx *tc = ctx;
 u64 msg_sts;

 msg_sts = ntb_msg_read_sts(tc->ntb);

 dev_dbg(&tc->ntb->dev, "message bits %#llx\n", msg_sts);

 wake_up(&tc->msg_wq);
}
