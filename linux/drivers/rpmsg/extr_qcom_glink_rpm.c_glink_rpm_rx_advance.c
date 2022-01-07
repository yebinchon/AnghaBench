
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_glink_pipe {int dummy; } ;
struct TYPE_2__ {unsigned int length; } ;
struct glink_rpm_pipe {int tail; TYPE_1__ native; } ;


 unsigned int readl (int ) ;
 struct glink_rpm_pipe* to_rpm_pipe (struct qcom_glink_pipe*) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void glink_rpm_rx_advance(struct qcom_glink_pipe *glink_pipe,
     size_t count)
{
 struct glink_rpm_pipe *pipe = to_rpm_pipe(glink_pipe);
 unsigned int tail;

 tail = readl(pipe->tail);

 tail += count;
 if (tail >= pipe->native.length)
  tail -= pipe->native.length;

 writel(tail, pipe->tail);
}
