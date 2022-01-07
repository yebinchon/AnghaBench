
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {struct domain_device* hostdata; } ;
struct domain_device {int dummy; } ;


 int sas_put_device (struct domain_device*) ;

void sas_target_destroy(struct scsi_target *starget)
{
 struct domain_device *found_dev = starget->hostdata;

 if (!found_dev)
  return;

 starget->hostdata = ((void*)0);
 sas_put_device(found_dev);
}
