
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {TYPE_2__ core; } ;
struct domain_device {int state; TYPE_1__* port; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_6__ {int (* lldd_dev_gone ) (struct domain_device*) ;} ;
struct TYPE_4__ {struct sas_ha_struct* ha; } ;


 int SAS_DEV_FOUND ;
 int sas_put_device (struct domain_device*) ;
 int stub1 (struct domain_device*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct sas_internal* to_sas_internal (int ) ;

void sas_notify_lldd_dev_gone(struct domain_device *dev)
{
 struct sas_ha_struct *sas_ha = dev->port->ha;
 struct Scsi_Host *shost = sas_ha->core.shost;
 struct sas_internal *i = to_sas_internal(shost->transportt);

 if (!i->dft->lldd_dev_gone)
  return;

 if (test_and_clear_bit(SAS_DEV_FOUND, &dev->state)) {
  i->dft->lldd_dev_gone(dev);
  sas_put_device(dev);
 }
}
