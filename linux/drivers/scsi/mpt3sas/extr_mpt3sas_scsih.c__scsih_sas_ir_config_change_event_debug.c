
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_5__ {int NumElements; int Flags; int * ConfigElement; } ;
struct TYPE_4__ {int ReasonCode; int PhysDiskNum; int PhysDiskDevHandle; int VolDevHandle; int ElementFlags; } ;
typedef TYPE_1__ Mpi2EventIrConfigElement_t ;
typedef TYPE_2__ Mpi2EventDataIrConfigChangeList_t ;


 int MPI2_EVENT_IR_CHANGE_EFLAGS_ELEMENT_TYPE_MASK ;



 int MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int pr_info (char*,char*,char*,int,int,int ) ;

__attribute__((used)) static void
_scsih_sas_ir_config_change_event_debug(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventDataIrConfigChangeList_t *event_data)
{
 Mpi2EventIrConfigElement_t *element;
 u8 element_type;
 int i;
 char *reason_str = ((void*)0), *element_str = ((void*)0);

 element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];

 ioc_info(ioc, "raid config change: (%s), elements(%d)\n",
   le32_to_cpu(event_data->Flags) & MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG ?
   "foreign" : "native",
   event_data->NumElements);
 for (i = 0; i < event_data->NumElements; i++, element++) {
  switch (element->ReasonCode) {
  case 136:
   reason_str = "add";
   break;
  case 131:
   reason_str = "remove";
   break;
  case 134:
   reason_str = "no change";
   break;
  case 135:
   reason_str = "hide";
   break;
  case 130:
   reason_str = "unhide";
   break;
  case 129:
   reason_str = "volume_created";
   break;
  case 128:
   reason_str = "volume_deleted";
   break;
  case 133:
   reason_str = "pd_created";
   break;
  case 132:
   reason_str = "pd_deleted";
   break;
  default:
   reason_str = "unknown reason";
   break;
  }
  element_type = le16_to_cpu(element->ElementFlags) &
      MPI2_EVENT_IR_CHANGE_EFLAGS_ELEMENT_TYPE_MASK;
  switch (element_type) {
  case 137:
   element_str = "volume";
   break;
  case 138:
   element_str = "phys disk";
   break;
  case 139:
   element_str = "hot spare";
   break;
  default:
   element_str = "unknown element";
   break;
  }
  pr_info("\t(%s:%s), vol handle(0x%04x), " "pd handle(0x%04x), pd num(0x%02x)\n", element_str,

      reason_str, le16_to_cpu(element->VolDevHandle),
      le16_to_cpu(element->PhysDiskDevHandle),
      element->PhysDiskNum);
 }
}
