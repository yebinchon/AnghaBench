
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct iscsi_cls_host {int mutex; int nr_scans; } ;
struct device {int dummy; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;


 int atomic_set (int *,int ) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int iscsi_bsg_host_add (struct Scsi_Host*,struct iscsi_cls_host*) ;
 int memset (struct iscsi_cls_host*,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int iscsi_setup_host(struct transport_container *tc, struct device *dev,
       struct device *cdev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct iscsi_cls_host *ihost = shost->shost_data;

 memset(ihost, 0, sizeof(*ihost));
 atomic_set(&ihost->nr_scans, 0);
 mutex_init(&ihost->mutex);

 iscsi_bsg_host_add(shost, ihost);


 return 0;
}
