
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_3__ {int RAIDOperation; int PercentComplete; int VolDevHandle; } ;
typedef TYPE_1__ Mpi2EventDataIrOperationStatus_t ;







 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_sas_ir_operation_status_event_debug(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventDataIrOperationStatus_t *event_data)
{
 char *reason_str = ((void*)0);

 switch (event_data->RAIDOperation) {
 case 128:
  reason_str = "resync";
  break;
 case 129:
  reason_str = "online capacity expansion";
  break;
 case 131:
  reason_str = "consistency check";
  break;
 case 132:
  reason_str = "background init";
  break;
 case 130:
  reason_str = "make data consistent";
  break;
 }

 if (!reason_str)
  return;

 ioc_info(ioc, "raid operational status: (%s)\thandle(0x%04x), percent complete(%d)\n",
   reason_str,
   le16_to_cpu(event_data->VolDevHandle),
   event_data->PercentComplete);
}
