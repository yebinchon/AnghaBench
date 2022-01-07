
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dev; struct MPT3SAS_TARGET* hostdata; } ;
struct scsi_device {int * hostdata; } ;
struct _sas_device {int * starget; } ;
struct _pcie_device {int * starget; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_TARGET {int flags; int num_luns; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; int pcie_device_lock; } ;


 int MPT_TARGET_FLAGS_PCIE_DEVICE ;
 int MPT_TARGET_FLAGS_VOLUME ;
 struct _pcie_device* __mpt3sas_get_pdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 struct _sas_device* __mpt3sas_get_sdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 struct Scsi_Host* dev_to_shost (int *) ;
 int kfree (int *) ;
 int pcie_device_put (struct _pcie_device*) ;
 int sas_device_put (struct _sas_device*) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
scsih_slave_destroy(struct scsi_device *sdev)
{
 struct MPT3SAS_TARGET *sas_target_priv_data;
 struct scsi_target *starget;
 struct Scsi_Host *shost;
 struct MPT3SAS_ADAPTER *ioc;
 struct _sas_device *sas_device;
 struct _pcie_device *pcie_device;
 unsigned long flags;

 if (!sdev->hostdata)
  return;

 starget = scsi_target(sdev);
 sas_target_priv_data = starget->hostdata;
 sas_target_priv_data->num_luns--;

 shost = dev_to_shost(&starget->dev);
 ioc = shost_priv(shost);

 if (sas_target_priv_data->flags & MPT_TARGET_FLAGS_PCIE_DEVICE) {
  spin_lock_irqsave(&ioc->pcie_device_lock, flags);
  pcie_device = __mpt3sas_get_pdev_from_target(ioc,
    sas_target_priv_data);
  if (pcie_device && !sas_target_priv_data->num_luns)
   pcie_device->starget = ((void*)0);

  if (pcie_device)
   pcie_device_put(pcie_device);

  spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);

 } else if (!(sas_target_priv_data->flags & MPT_TARGET_FLAGS_VOLUME)) {
  spin_lock_irqsave(&ioc->sas_device_lock, flags);
  sas_device = __mpt3sas_get_sdev_from_target(ioc,
    sas_target_priv_data);
  if (sas_device && !sas_target_priv_data->num_luns)
   sas_device->starget = ((void*)0);

  if (sas_device)
   sas_device_put(sas_device);
  spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 }

 kfree(sdev->hostdata);
 sdev->hostdata = ((void*)0);
}
