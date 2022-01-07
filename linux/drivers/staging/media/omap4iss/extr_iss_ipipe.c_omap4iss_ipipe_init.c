
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_ipipe_device {int wait; int state; } ;
struct iss_device {struct iss_ipipe_device ipipe; } ;


 int ISS_PIPELINE_STREAM_STOPPED ;
 int init_waitqueue_head (int *) ;
 int ipipe_init_entities (struct iss_ipipe_device*) ;

int omap4iss_ipipe_init(struct iss_device *iss)
{
 struct iss_ipipe_device *ipipe = &iss->ipipe;

 ipipe->state = ISS_PIPELINE_STREAM_STOPPED;
 init_waitqueue_head(&ipipe->wait);

 return ipipe_init_entities(ipipe);
}
