
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct _raid_device {scalar_t__ wwid; TYPE_1__* starget; } ;
struct MPT3SAS_TARGET {int deleted; } ;
struct MPT3SAS_ADAPTER {int raid_device_lock; } ;
struct TYPE_2__ {struct MPT3SAS_TARGET* hostdata; } ;


 int dewtprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ,int ) ;
 struct _raid_device* mpt3sas_raid_device_find_by_handle (struct MPT3SAS_ADAPTER*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_set_volume_delete_flag(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
 struct _raid_device *raid_device;
 struct MPT3SAS_TARGET *sas_target_priv_data;
 unsigned long flags;

 spin_lock_irqsave(&ioc->raid_device_lock, flags);
 raid_device = mpt3sas_raid_device_find_by_handle(ioc, handle);
 if (raid_device && raid_device->starget &&
     raid_device->starget->hostdata) {
  sas_target_priv_data =
      raid_device->starget->hostdata;
  sas_target_priv_data->deleted = 1;
  dewtprintk(ioc,
      ioc_info(ioc, "setting delete flag: handle(0x%04x), wwid(0x%016llx)\n",
        handle, (u64)raid_device->wwid));
 }
 spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
}
