
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_css_pipe {int qlock; TYPE_1__* queue; } ;
struct imgu_css {struct imgu_css_pipe* pipes; } ;
struct TYPE_2__ {int bufs; } ;


 int IPU3_CSS_QUEUES ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool imgu_css_pipe_queue_empty(struct imgu_css *css, unsigned int pipe)
{
 int q;
 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];

 spin_lock(&css_pipe->qlock);
 for (q = 0; q < IPU3_CSS_QUEUES; q++)
  if (!list_empty(&css_pipe->queue[q].bufs))
   break;
 spin_unlock(&css_pipe->qlock);
 return (q == IPU3_CSS_QUEUES);
}
