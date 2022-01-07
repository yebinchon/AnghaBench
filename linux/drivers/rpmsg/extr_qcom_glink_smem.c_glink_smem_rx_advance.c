
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qcom_glink_pipe {int dummy; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct glink_smem_pipe {int * tail; TYPE_1__ native; } ;


 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct glink_smem_pipe* to_smem_pipe (struct qcom_glink_pipe*) ;

__attribute__((used)) static void glink_smem_rx_advance(struct qcom_glink_pipe *np,
      size_t count)
{
 struct glink_smem_pipe *pipe = to_smem_pipe(np);
 u32 tail;

 tail = le32_to_cpu(*pipe->tail);

 tail += count;
 if (tail > pipe->native.length)
  tail -= pipe->native.length;

 *pipe->tail = cpu_to_le32(tail);
}
