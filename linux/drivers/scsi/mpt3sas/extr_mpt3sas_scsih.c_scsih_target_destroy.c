
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ channel; scalar_t__ id; struct MPT3SAS_TARGET* hostdata; int dev; } ;
struct _sas_device {scalar_t__ id; scalar_t__ channel; struct scsi_target* starget; } ;
struct _raid_device {int * sdev; int * starget; } ;
struct _pcie_device {scalar_t__ id; scalar_t__ channel; struct scsi_target* starget; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_TARGET {int * sas_dev; int * pcie_dev; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; int pcie_device_lock; int raid_device_lock; } ;


 scalar_t__ PCIE_CHANNEL ;
 scalar_t__ RAID_CHANNEL ;
 struct _pcie_device* __mpt3sas_get_pdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 struct _sas_device* __mpt3sas_get_sdev_from_target (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ;
 struct _raid_device* _scsih_raid_device_find_by_id (struct MPT3SAS_ADAPTER*,scalar_t__,scalar_t__) ;
 struct Scsi_Host* dev_to_shost (int *) ;
 int kfree (struct MPT3SAS_TARGET*) ;
 int pcie_device_put (struct _pcie_device*) ;
 int sas_device_put (struct _sas_device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
scsih_target_destroy(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(&starget->dev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 struct MPT3SAS_TARGET *sas_target_priv_data;
 struct _sas_device *sas_device;
 struct _raid_device *raid_device;
 struct _pcie_device *pcie_device;
 unsigned long flags;

 sas_target_priv_data = starget->hostdata;
 if (!sas_target_priv_data)
  return;

 if (starget->channel == RAID_CHANNEL) {
  spin_lock_irqsave(&ioc->raid_device_lock, flags);
  raid_device = _scsih_raid_device_find_by_id(ioc, starget->id,
      starget->channel);
  if (raid_device) {
   raid_device->starget = ((void*)0);
   raid_device->sdev = ((void*)0);
  }
  spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
  goto out;
 }

 if (starget->channel == PCIE_CHANNEL) {
  spin_lock_irqsave(&ioc->pcie_device_lock, flags);
  pcie_device = __mpt3sas_get_pdev_from_target(ioc,
       sas_target_priv_data);
  if (pcie_device && (pcie_device->starget == starget) &&
   (pcie_device->id == starget->id) &&
   (pcie_device->channel == starget->channel))
   pcie_device->starget = ((void*)0);

  if (pcie_device) {



   sas_target_priv_data->pcie_dev = ((void*)0);
   pcie_device_put(pcie_device);
   pcie_device_put(pcie_device);
  }
  spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
  goto out;
 }

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = __mpt3sas_get_sdev_from_target(ioc, sas_target_priv_data);
 if (sas_device && (sas_device->starget == starget) &&
     (sas_device->id == starget->id) &&
     (sas_device->channel == starget->channel))
  sas_device->starget = ((void*)0);

 if (sas_device) {



  sas_target_priv_data->sas_dev = ((void*)0);
  sas_device_put(sas_device);

  sas_device_put(sas_device);
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

 out:
 kfree(sas_target_priv_data);
 starget->hostdata = ((void*)0);
}
