
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport_container {int dummy; } ;
struct request_queue {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct request_queue* q; } ;


 int bsg_remove_queue (struct request_queue*) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 TYPE_1__* to_sas_host_attrs (struct Scsi_Host*) ;

__attribute__((used)) static int sas_host_remove(struct transport_container *tc, struct device *dev,
      struct device *cdev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct request_queue *q = to_sas_host_attrs(shost)->q;

 bsg_remove_queue(q);
 return 0;
}
