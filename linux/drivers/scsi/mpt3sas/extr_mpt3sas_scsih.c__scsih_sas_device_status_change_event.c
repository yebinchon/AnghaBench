
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct _sas_device {TYPE_2__* starget; } ;
struct MPT3SAS_TARGET {int tm_busy; int handle; } ;
struct TYPE_5__ {int HeaderVersion; } ;
struct MPT3SAS_ADAPTER {int logging_level; int sas_device_lock; TYPE_1__ facts; } ;
struct TYPE_7__ {scalar_t__ ReasonCode; int SASAddress; } ;
struct TYPE_6__ {struct MPT3SAS_TARGET* hostdata; } ;
typedef TYPE_3__ Mpi2EventDataSasDeviceStatusChange_t ;


 scalar_t__ MPI2_EVENT_SAS_DEV_STAT_RC_CMP_INTERNAL_DEV_RESET ;
 scalar_t__ MPI2_EVENT_SAS_DEV_STAT_RC_INTERNAL_DEVICE_RESET ;
 int MPT_DEBUG_EVENT_WORK_TASK ;
 struct _sas_device* __mpt3sas_get_sdev_by_addr (struct MPT3SAS_ADAPTER*,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*,int ) ;
 int le64_to_cpu (int ) ;
 int sas_device_put (struct _sas_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_sas_device_status_change_event(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventDataSasDeviceStatusChange_t *event_data)
{
 struct MPT3SAS_TARGET *target_priv_data;
 struct _sas_device *sas_device;
 u64 sas_address;
 unsigned long flags;




 if ((ioc->facts.HeaderVersion >> 8) < 0xC)
  return;

 if (event_data->ReasonCode !=
     MPI2_EVENT_SAS_DEV_STAT_RC_INTERNAL_DEVICE_RESET &&
    event_data->ReasonCode !=
     MPI2_EVENT_SAS_DEV_STAT_RC_CMP_INTERNAL_DEV_RESET)
  return;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_address = le64_to_cpu(event_data->SASAddress);
 sas_device = __mpt3sas_get_sdev_by_addr(ioc,
     sas_address);

 if (!sas_device || !sas_device->starget)
  goto out;

 target_priv_data = sas_device->starget->hostdata;
 if (!target_priv_data)
  goto out;

 if (event_data->ReasonCode ==
     MPI2_EVENT_SAS_DEV_STAT_RC_INTERNAL_DEVICE_RESET)
  target_priv_data->tm_busy = 1;
 else
  target_priv_data->tm_busy = 0;

 if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
  ioc_info(ioc,
      "%s tm_busy flag for handle(0x%04x)\n",
      (target_priv_data->tm_busy == 1) ? "Enable" : "Disable",
      target_priv_data->handle);

out:
 if (sas_device)
  sas_device_put(sas_device);

 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
}
