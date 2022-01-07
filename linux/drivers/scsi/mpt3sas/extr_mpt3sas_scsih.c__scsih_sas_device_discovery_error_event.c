
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct fw_event_work {scalar_t__ event_data; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_2__ {int ReasonCode; int PhysicalPort; int SASAddress; int DevHandle; } ;
typedef TYPE_1__ Mpi25EventDataSasDeviceDiscoveryError_t ;




 int ioc_warn (struct MPT3SAS_ADAPTER*,char*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_sas_device_discovery_error_event(struct MPT3SAS_ADAPTER *ioc,
 struct fw_event_work *fw_event)
{
 Mpi25EventDataSasDeviceDiscoveryError_t *event_data =
  (Mpi25EventDataSasDeviceDiscoveryError_t *)fw_event->event_data;

 switch (event_data->ReasonCode) {
 case 129:
  ioc_warn(ioc, "SMP command sent to the expander (handle:0x%04x, sas_address:0x%016llx, physical_port:0x%02x) has failed\n",
    le16_to_cpu(event_data->DevHandle),
    (u64)le64_to_cpu(event_data->SASAddress),
    event_data->PhysicalPort);
  break;
 case 128:
  ioc_warn(ioc, "SMP command sent to the expander (handle:0x%04x, sas_address:0x%016llx, physical_port:0x%02x) has timed out\n",
    le16_to_cpu(event_data->DevHandle),
    (u64)le64_to_cpu(event_data->SASAddress),
    event_data->PhysicalPort);
  break;
 default:
  break;
 }
}
