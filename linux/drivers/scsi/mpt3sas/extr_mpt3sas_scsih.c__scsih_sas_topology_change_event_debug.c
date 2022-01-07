
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_5__ {int ExpStatus; int StartPhyNum; int NumEntries; TYPE_1__* PHY; int EnclosureHandle; int ExpanderDevHandle; } ;
struct TYPE_4__ {int PhyStatus; int LinkRate; int AttachedDevHandle; } ;
typedef TYPE_2__ Mpi2EventDataSasTopologyChangeList_t ;







 int MPI2_EVENT_SAS_TOPO_RC_MASK ;




 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*) ;
 int le16_to_cpu (int ) ;
 int pr_info (char*,int,int,...) ;

__attribute__((used)) static void
_scsih_sas_topology_change_event_debug(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventDataSasTopologyChangeList_t *event_data)
{
 int i;
 u16 handle;
 u16 reason_code;
 u8 phy_number;
 char *status_str = ((void*)0);
 u8 link_rate, prev_link_rate;

 switch (event_data->ExpStatus) {
 case 136:
  status_str = "add";
  break;
 case 134:
  status_str = "remove";
  break;
 case 133:
 case 0:
  status_str = "responding";
  break;
 case 135:
  status_str = "remove delay";
  break;
 default:
  status_str = "unknown status";
  break;
 }
 ioc_info(ioc, "sas topology change: (%s)\n", status_str);
 pr_info("\thandle(0x%04x), enclosure_handle(0x%04x) " "start_phy(%02d), count(%d)\n",

     le16_to_cpu(event_data->ExpanderDevHandle),
     le16_to_cpu(event_data->EnclosureHandle),
     event_data->StartPhyNum, event_data->NumEntries);
 for (i = 0; i < event_data->NumEntries; i++) {
  handle = le16_to_cpu(event_data->PHY[i].AttachedDevHandle);
  if (!handle)
   continue;
  phy_number = event_data->StartPhyNum + i;
  reason_code = event_data->PHY[i].PhyStatus &
      MPI2_EVENT_SAS_TOPO_RC_MASK;
  switch (reason_code) {
  case 129:
   status_str = "target add";
   break;
  case 128:
   status_str = "target remove";
   break;
  case 132:
   status_str = "delay target remove";
   break;
  case 130:
   status_str = "link rate change";
   break;
  case 131:
   status_str = "target responding";
   break;
  default:
   status_str = "unknown";
   break;
  }
  link_rate = event_data->PHY[i].LinkRate >> 4;
  prev_link_rate = event_data->PHY[i].LinkRate & 0xF;
  pr_info("\tphy(%02d), attached_handle(0x%04x): %s:" " link rate: new(0x%02x), old(0x%02x)\n", phy_number,

      handle, status_str, link_rate, prev_link_rate);

 }
}
