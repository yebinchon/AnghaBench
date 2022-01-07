
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int event; scalar_t__ event_data; int device_handle; } ;
struct SL_WH_TRIGGERS_EVENT_DATA_T {int dummy; } ;
struct MPT3SAS_ADAPTER {int logging_level; int start_scan; scalar_t__ remove_host; int shost_recovery; int shost; scalar_t__ pci_error_recovery; } ;
typedef int Mpi2EventDataSasDeviceStatusChange_t ;
 int MPT_DEBUG_EVENT_WORK_TASK ;
 int _scsih_fw_event_del_from_list (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_pcie_device_status_change_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_pcie_enumeration_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_pcie_topology_change_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_remove_unresponding_devices (struct MPT3SAS_ADAPTER*) ;
 int _scsih_sas_broadcast_primitive_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_device_discovery_error_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_device_status_change_event_debug (struct MPT3SAS_ADAPTER*,int *) ;
 int _scsih_sas_discovery_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_enclosure_dev_status_change_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_ir_config_change_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_ir_operation_status_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_ir_physical_disk_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_ir_volume_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_sas_topology_change_event (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 int _scsih_scan_for_devices_after_reset (struct MPT3SAS_ADAPTER*) ;
 int _scsih_turn_on_pfa_led (struct MPT3SAS_ADAPTER*,int ) ;
 int dewtprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int fw_event_work_put (struct fw_event_work*) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*) ;
 int* missing_delay ;
 int mpt3sas_base_update_missing_delay (struct MPT3SAS_ADAPTER*,int,int) ;
 int mpt3sas_process_trigger_data (struct MPT3SAS_ADAPTER*,struct SL_WH_TRIGGERS_EVENT_DATA_T*) ;
 int scsi_host_in_recovery (int ) ;
 int ssleep (int) ;

__attribute__((used)) static void
_mpt3sas_fw_work(struct MPT3SAS_ADAPTER *ioc, struct fw_event_work *fw_event)
{
 _scsih_fw_event_del_from_list(ioc, fw_event);


 if (ioc->remove_host || ioc->pci_error_recovery) {
  fw_event_work_put(fw_event);
  return;
 }

 switch (fw_event->event) {
 case 130:
  mpt3sas_process_trigger_data(ioc,
   (struct SL_WH_TRIGGERS_EVENT_DATA_T *)
   fw_event->event_data);
  break;
 case 129:
  while (scsi_host_in_recovery(ioc->shost) ||
      ioc->shost_recovery) {




   if (ioc->remove_host)
    goto out;
   ssleep(1);
  }
  _scsih_remove_unresponding_devices(ioc);
  _scsih_scan_for_devices_after_reset(ioc);
  break;
 case 131:
  ioc->start_scan = 0;
  if (missing_delay[0] != -1 && missing_delay[1] != -1)
   mpt3sas_base_update_missing_delay(ioc, missing_delay[0],
       missing_delay[1]);
  dewtprintk(ioc,
      ioc_info(ioc, "port enable: complete from worker thread\n"));
  break;
 case 128:
  _scsih_turn_on_pfa_led(ioc, fw_event->device_handle);
  break;
 case 132:
  _scsih_sas_topology_change_event(ioc, fw_event);
  break;
 case 135:
  if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
   _scsih_sas_device_status_change_event_debug(ioc,
       (Mpi2EventDataSasDeviceStatusChange_t *)
       fw_event->event_data);
  break;
 case 134:
  _scsih_sas_discovery_event(ioc, fw_event);
  break;
 case 136:
  _scsih_sas_device_discovery_error_event(ioc, fw_event);
  break;
 case 137:
  _scsih_sas_broadcast_primitive_event(ioc, fw_event);
  break;
 case 133:
  _scsih_sas_enclosure_dev_status_change_event(ioc,
      fw_event);
  break;
 case 144:
  _scsih_sas_ir_config_change_event(ioc, fw_event);
  break;
 case 141:
  _scsih_sas_ir_volume_event(ioc, fw_event);
  break;
 case 142:
  _scsih_sas_ir_physical_disk_event(ioc, fw_event);
  break;
 case 143:
  _scsih_sas_ir_operation_status_event(ioc, fw_event);
  break;
 case 140:
  _scsih_pcie_device_status_change_event(ioc, fw_event);
  break;
 case 139:
  _scsih_pcie_enumeration_event(ioc, fw_event);
  break;
 case 138:
  _scsih_pcie_topology_change_event(ioc, fw_event);
   return;
 break;
 }
out:
 fw_event_work_put(fw_event);
}
