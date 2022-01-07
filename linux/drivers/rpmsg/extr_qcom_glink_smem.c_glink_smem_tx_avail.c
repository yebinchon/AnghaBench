
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qcom_glink_pipe {int dummy; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct glink_smem_pipe {TYPE_1__ native; int * tail; int * head; } ;


 scalar_t__ FIFO_FULL_RESERVE ;
 scalar_t__ TX_BLOCKED_CMD_RESERVE ;
 scalar_t__ le32_to_cpu (int ) ;
 struct glink_smem_pipe* to_smem_pipe (struct qcom_glink_pipe*) ;

__attribute__((used)) static size_t glink_smem_tx_avail(struct qcom_glink_pipe *np)
{
 struct glink_smem_pipe *pipe = to_smem_pipe(np);
 u32 head;
 u32 tail;
 u32 avail;

 head = le32_to_cpu(*pipe->head);
 tail = le32_to_cpu(*pipe->tail);

 if (tail <= head)
  avail = pipe->native.length - head + tail;
 else
  avail = tail - head;

 if (avail < (FIFO_FULL_RESERVE + TX_BLOCKED_CMD_RESERVE))
  avail = 0;
 else
  avail -= FIFO_FULL_RESERVE + TX_BLOCKED_CMD_RESERVE;

 return avail;
}
