
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_ipipeif_device {int wait; int state; } ;
struct iss_device {struct iss_ipipeif_device ipipeif; } ;


 int ISS_PIPELINE_STREAM_STOPPED ;
 int init_waitqueue_head (int *) ;
 int ipipeif_init_entities (struct iss_ipipeif_device*) ;

int omap4iss_ipipeif_init(struct iss_device *iss)
{
 struct iss_ipipeif_device *ipipeif = &iss->ipipeif;

 ipipeif->state = ISS_PIPELINE_STREAM_STOPPED;
 init_waitqueue_head(&ipipeif->wait);

 return ipipeif_init_entities(ipipeif);
}
