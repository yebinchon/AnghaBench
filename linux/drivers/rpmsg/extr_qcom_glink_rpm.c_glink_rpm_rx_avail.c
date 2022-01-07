
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_glink_pipe {int dummy; } ;
struct TYPE_2__ {unsigned int length; } ;
struct glink_rpm_pipe {TYPE_1__ native; int tail; int head; } ;


 unsigned int readl (int ) ;
 struct glink_rpm_pipe* to_rpm_pipe (struct qcom_glink_pipe*) ;

__attribute__((used)) static size_t glink_rpm_rx_avail(struct qcom_glink_pipe *glink_pipe)
{
 struct glink_rpm_pipe *pipe = to_rpm_pipe(glink_pipe);
 unsigned int head;
 unsigned int tail;

 head = readl(pipe->head);
 tail = readl(pipe->tail);

 if (head < tail)
  return pipe->native.length - tail + head;
 else
  return head - tail;
}
