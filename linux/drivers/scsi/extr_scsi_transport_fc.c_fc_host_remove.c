
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct fc_host_attrs {int rqst_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* dev_to_shost (struct device*) ;
 int fc_bsg_remove (int ) ;
 struct fc_host_attrs* shost_to_fc_host (struct Scsi_Host*) ;

__attribute__((used)) static int fc_host_remove(struct transport_container *tc, struct device *dev,
    struct device *cdev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct fc_host_attrs *fc_host = shost_to_fc_host(shost);

 fc_bsg_remove(fc_host->rqst_q);
 return 0;
}
