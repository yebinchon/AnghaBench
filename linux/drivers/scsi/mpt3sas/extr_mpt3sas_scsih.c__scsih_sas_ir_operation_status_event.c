
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct fw_event_work {scalar_t__ event_data; } ;
struct _raid_device {int percent_complete; } ;
struct MPT3SAS_ADAPTER {int logging_level; int raid_device_lock; int hide_ir_msg; } ;
struct TYPE_3__ {scalar_t__ RAIDOperation; int PercentComplete; int VolDevHandle; } ;
typedef TYPE_1__ Mpi2EventDataIrOperationStatus_t ;


 scalar_t__ MPI2_EVENT_IR_RAIDOP_RESYNC ;
 int MPT_DEBUG_EVENT_WORK_TASK ;
 int _scsih_sas_ir_operation_status_event_debug (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int le16_to_cpu (int ) ;
 struct _raid_device* mpt3sas_raid_device_find_by_handle (struct MPT3SAS_ADAPTER*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_sas_ir_operation_status_event(struct MPT3SAS_ADAPTER *ioc,
 struct fw_event_work *fw_event)
{
 Mpi2EventDataIrOperationStatus_t *event_data =
  (Mpi2EventDataIrOperationStatus_t *)
  fw_event->event_data;
 static struct _raid_device *raid_device;
 unsigned long flags;
 u16 handle;

 if ((ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK) &&
     (!ioc->hide_ir_msg))
  _scsih_sas_ir_operation_status_event_debug(ioc,
       event_data);


 if (event_data->RAIDOperation == MPI2_EVENT_IR_RAIDOP_RESYNC) {

  spin_lock_irqsave(&ioc->raid_device_lock, flags);
  handle = le16_to_cpu(event_data->VolDevHandle);
  raid_device = mpt3sas_raid_device_find_by_handle(ioc, handle);
  if (raid_device)
   raid_device->percent_complete =
       event_data->PercentComplete;
  spin_unlock_irqrestore(&ioc->raid_device_lock, flags);
 }
}
