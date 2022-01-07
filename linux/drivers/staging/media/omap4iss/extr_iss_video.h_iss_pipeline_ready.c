
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_pipeline {int state; } ;


 int ISS_PIPELINE_IDLE_INPUT ;
 int ISS_PIPELINE_IDLE_OUTPUT ;
 int ISS_PIPELINE_QUEUE_INPUT ;
 int ISS_PIPELINE_QUEUE_OUTPUT ;
 int ISS_PIPELINE_STREAM_INPUT ;
 int ISS_PIPELINE_STREAM_OUTPUT ;

__attribute__((used)) static inline int iss_pipeline_ready(struct iss_pipeline *pipe)
{
 return pipe->state == (ISS_PIPELINE_STREAM_INPUT |
          ISS_PIPELINE_STREAM_OUTPUT |
          ISS_PIPELINE_QUEUE_INPUT |
          ISS_PIPELINE_QUEUE_OUTPUT |
          ISS_PIPELINE_IDLE_INPUT |
          ISS_PIPELINE_IDLE_OUTPUT);
}
