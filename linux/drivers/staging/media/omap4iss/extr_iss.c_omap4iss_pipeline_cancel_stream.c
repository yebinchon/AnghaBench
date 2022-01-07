
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_pipeline {scalar_t__ output; scalar_t__ input; } ;


 int omap4iss_video_cancel_stream (scalar_t__) ;

void omap4iss_pipeline_cancel_stream(struct iss_pipeline *pipe)
{
 if (pipe->input)
  omap4iss_video_cancel_stream(pipe->input);
 if (pipe->output)
  omap4iss_video_cancel_stream(pipe->output);
}
