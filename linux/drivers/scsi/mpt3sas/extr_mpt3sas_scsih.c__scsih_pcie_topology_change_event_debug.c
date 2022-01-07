
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_5__ {int SwitchStatus; int StartPortNum; int NumEntries; TYPE_1__* PortEntry; int EnclosureHandle; int SwitchDevHandle; } ;
struct TYPE_4__ {int PortStatus; int CurrentPortInfo; int PreviousPortInfo; int AttachedDevHandle; } ;
typedef TYPE_2__ Mpi26EventDataPCIeTopologyChangeList_t ;


 int MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*) ;
 int le16_to_cpu (int ) ;
 int pr_info (char*,int,int,...) ;

__attribute__((used)) static void
_scsih_pcie_topology_change_event_debug(struct MPT3SAS_ADAPTER *ioc,
 Mpi26EventDataPCIeTopologyChangeList_t *event_data)
{
 int i;
 u16 handle;
 u16 reason_code;
 u8 port_number;
 char *status_str = ((void*)0);
 u8 link_rate, prev_link_rate;

 switch (event_data->SwitchStatus) {
 case 131:
  status_str = "add";
  break;
 case 129:
  status_str = "remove";
  break;
 case 128:
 case 0:
  status_str = "responding";
  break;
 case 130:
  status_str = "remove delay";
  break;
 default:
  status_str = "unknown status";
  break;
 }
 ioc_info(ioc, "pcie topology change: (%s)\n", status_str);
 pr_info("\tswitch_handle(0x%04x), enclosure_handle(0x%04x)"
  "start_port(%02d), count(%d)\n",
  le16_to_cpu(event_data->SwitchDevHandle),
  le16_to_cpu(event_data->EnclosureHandle),
  event_data->StartPortNum, event_data->NumEntries);
 for (i = 0; i < event_data->NumEntries; i++) {
  handle =
   le16_to_cpu(event_data->PortEntry[i].AttachedDevHandle);
  if (!handle)
   continue;
  port_number = event_data->StartPortNum + i;
  reason_code = event_data->PortEntry[i].PortStatus;
  switch (reason_code) {
  case 135:
   status_str = "target add";
   break;
  case 134:
   status_str = "target remove";
   break;
  case 136:
   status_str = "delay target remove";
   break;
  case 132:
   status_str = "link rate change";
   break;
  case 133:
   status_str = "target responding";
   break;
  default:
   status_str = "unknown";
   break;
  }
  link_rate = event_data->PortEntry[i].CurrentPortInfo &
   MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK;
  prev_link_rate = event_data->PortEntry[i].PreviousPortInfo &
   MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK;
  pr_info("\tport(%02d), attached_handle(0x%04x): %s:"
   " link rate: new(0x%02x), old(0x%02x)\n", port_number,
   handle, status_str, link_rate, prev_link_rate);
 }
}
