
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_3__ {int ReasonCode; int ASCQ; int ASC; int TaskTag; int SASAddress; int DevHandle; } ;
typedef TYPE_1__ Mpi2EventDataSasDeviceStatusChange_t ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int pr_cont (char*,...) ;

__attribute__((used)) static void
_scsih_sas_device_status_change_event_debug(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventDataSasDeviceStatusChange_t *event_data)
{
 char *reason_str = ((void*)0);

 switch (event_data->ReasonCode) {
 case 130:
  reason_str = "smart data";
  break;
 case 128:
  reason_str = "unsupported device discovered";
  break;
 case 133:
  reason_str = "internal device reset";
  break;
 case 129:
  reason_str = "internal task abort";
  break;
 case 140:
  reason_str = "internal task abort set";
  break;
 case 138:
  reason_str = "internal clear task set";
  break;
 case 132:
  reason_str = "internal query task";
  break;
 case 131:
  reason_str = "sata init failure";
  break;
 case 136:
  reason_str = "internal device reset complete";
  break;
 case 135:
  reason_str = "internal task abort complete";
  break;
 case 139:
  reason_str = "internal async notification";
  break;
 case 134:
  reason_str = "expander reduced functionality";
  break;
 case 137:
  reason_str = "expander reduced functionality complete";
  break;
 default:
  reason_str = "unknown reason";
  break;
 }
 ioc_info(ioc, "device status change: (%s)\thandle(0x%04x), sas address(0x%016llx), tag(%d)",
   reason_str, le16_to_cpu(event_data->DevHandle),
   (u64)le64_to_cpu(event_data->SASAddress),
   le16_to_cpu(event_data->TaskTag));
 if (event_data->ReasonCode == 130)
  pr_cont(", ASC(0x%x), ASCQ(0x%x)\n",
   event_data->ASC, event_data->ASCQ);
 pr_cont("\n");
}
