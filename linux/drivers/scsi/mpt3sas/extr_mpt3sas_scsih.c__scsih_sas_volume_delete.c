
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct scsi_target {int dev; struct MPT3SAS_TARGET* hostdata; } ;
struct _raid_device {int list; scalar_t__ wwid; int handle; struct scsi_target* starget; } ;
struct MPT3SAS_TARGET {int deleted; } ;
struct MPT3SAS_ADAPTER {int raid_device_lock; } ;


 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ,int ) ;
 int kfree (struct _raid_device*) ;
 int list_del (int *) ;
 struct _raid_device* mpt3sas_raid_device_find_by_handle (struct MPT3SAS_ADAPTER*,int ) ;
 int scsi_remove_target (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_sas_volume_delete(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
 struct _raid_device *raid_device;
 unsigned long flags;
 struct MPT3SAS_TARGET *sas_target_priv_data;
 struct scsi_target *starget = ((void*)0);

 spin_lock_irqsave(&ioc->raid_device_lock, flags);
 raid_device = mpt3sas_raid_device_find_by_handle(ioc, handle);
 if (raid_device) {
  if (raid_device->starget) {
   starget = raid_device->starget;
   sas_target_priv_data = starget->hostdata;
   sas_target_priv_data->deleted = 1;
  }
  ioc_info(ioc, "removing handle(0x%04x), wwid(0x%016llx)\n",
    raid_device->handle, (u64)raid_device->wwid);
  list_del(&raid_device->list);
  kfree(raid_device);
 }
 spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
 if (starget)
  scsi_remove_target(&starget->dev);
}
