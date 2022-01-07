
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_3__ {int ReasonCode; int StartSlot; int EnclosureLogicalID; int EnclosureHandle; } ;
typedef TYPE_1__ Mpi2EventDataSasEnclDevStatusChange_t ;




 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_sas_enclosure_dev_status_change_event_debug(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventDataSasEnclDevStatusChange_t *event_data)
{
 char *reason_str = ((void*)0);

 switch (event_data->ReasonCode) {
 case 129:
  reason_str = "enclosure add";
  break;
 case 128:
  reason_str = "enclosure remove";
  break;
 default:
  reason_str = "unknown reason";
  break;
 }

 ioc_info(ioc, "enclosure status change: (%s)\n"
   "\thandle(0x%04x), enclosure logical id(0x%016llx) number slots(%d)\n",
   reason_str,
   le16_to_cpu(event_data->EnclosureHandle),
   (u64)le64_to_cpu(event_data->EnclosureLogicalID),
   le16_to_cpu(event_data->StartSlot));
}
