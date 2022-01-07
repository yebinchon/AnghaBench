
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct iscsi_cls_host {int bsg_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;


 int bsg_remove_queue (int ) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;

__attribute__((used)) static int iscsi_remove_host(struct transport_container *tc,
        struct device *dev, struct device *cdev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct iscsi_cls_host *ihost = shost->shost_data;

 bsg_remove_queue(ihost->bsg_q);
 return 0;
}
