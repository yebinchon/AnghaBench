
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sas_internal {TYPE_1__* dft; } ;
struct TYPE_6__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {int dev; TYPE_3__ core; } ;
struct domain_device {int kref; int state; int sas_addr; TYPE_2__* port; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_5__ {struct sas_ha_struct* ha; } ;
struct TYPE_4__ {int (* lldd_dev_found ) (struct domain_device*) ;} ;


 int SAS_ADDR (int ) ;
 int SAS_DEV_FOUND ;
 int dev_name (int ) ;
 int kref_get (int *) ;
 int pr_warn (char*,int ,int ,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct domain_device*) ;
 struct sas_internal* to_sas_internal (int ) ;

int sas_notify_lldd_dev_found(struct domain_device *dev)
{
 int res = 0;
 struct sas_ha_struct *sas_ha = dev->port->ha;
 struct Scsi_Host *shost = sas_ha->core.shost;
 struct sas_internal *i = to_sas_internal(shost->transportt);

 if (!i->dft->lldd_dev_found)
  return 0;

 res = i->dft->lldd_dev_found(dev);
 if (res) {
  pr_warn("driver on host %s cannot handle device %llx, error:%d\n",
   dev_name(sas_ha->dev),
   SAS_ADDR(dev->sas_addr), res);
 }
 set_bit(SAS_DEV_FOUND, &dev->state);
 kref_get(&dev->kref);
 return res;
}
