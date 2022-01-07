
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_css {int dummy; } ;


 unsigned int IMGU_MAX_PIPE_NUM ;
 int imgu_css_pipe_queue_empty (struct imgu_css*,unsigned int) ;

bool imgu_css_queue_empty(struct imgu_css *css)
{
 unsigned int pipe;
 bool ret = 0;

 for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
  ret &= imgu_css_pipe_queue_empty(css, pipe);

 return ret;
}
