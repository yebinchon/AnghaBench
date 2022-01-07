
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_resizer_device {int wait; int state; } ;
struct iss_device {struct iss_resizer_device resizer; } ;


 int ISS_PIPELINE_STREAM_STOPPED ;
 int init_waitqueue_head (int *) ;
 int resizer_init_entities (struct iss_resizer_device*) ;

int omap4iss_resizer_init(struct iss_device *iss)
{
 struct iss_resizer_device *resizer = &iss->resizer;

 resizer->state = ISS_PIPELINE_STREAM_STOPPED;
 init_waitqueue_head(&resizer->wait);

 return resizer_init_entities(resizer);
}
