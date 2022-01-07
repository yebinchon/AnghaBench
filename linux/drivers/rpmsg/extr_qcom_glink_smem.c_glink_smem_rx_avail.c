
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qcom_glink_pipe {int dummy; } ;
struct TYPE_2__ {size_t length; } ;
struct glink_smem_pipe {TYPE_1__ native; int * tail; int * head; void* fifo; int remote_pid; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SMEM_GLINK_NATIVE_XPRT_FIFO_1 ;
 size_t le32_to_cpu (int ) ;
 int pr_err (char*,int ) ;
 void* qcom_smem_get (int ,int ,size_t*) ;
 struct glink_smem_pipe* to_smem_pipe (struct qcom_glink_pipe*) ;

__attribute__((used)) static size_t glink_smem_rx_avail(struct qcom_glink_pipe *np)
{
 struct glink_smem_pipe *pipe = to_smem_pipe(np);
 size_t len;
 void *fifo;
 u32 head;
 u32 tail;

 if (!pipe->fifo) {
  fifo = qcom_smem_get(pipe->remote_pid,
         SMEM_GLINK_NATIVE_XPRT_FIFO_1, &len);
  if (IS_ERR(fifo)) {
   pr_err("failed to acquire RX fifo handle: %ld\n",
          PTR_ERR(fifo));
   return 0;
  }

  pipe->fifo = fifo;
  pipe->native.length = len;
 }

 head = le32_to_cpu(*pipe->head);
 tail = le32_to_cpu(*pipe->tail);

 if (head < tail)
  return pipe->native.length - tail + head;
 else
  return head - tail;
}
