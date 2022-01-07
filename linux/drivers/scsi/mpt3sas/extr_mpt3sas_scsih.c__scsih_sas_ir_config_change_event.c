
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct fw_event_work {scalar_t__ event_data; } ;
struct MPT3SAS_ADAPTER {int logging_level; scalar_t__ hba_mpi_version_belonged; int is_warpdrive; scalar_t__ shost_recovery; int hide_ir_msg; } ;
struct TYPE_10__ {int NumElements; int * ConfigElement; int Flags; } ;
struct TYPE_9__ {int ReasonCode; int VolDevHandle; int PhysDiskNum; int PhysDiskDevHandle; } ;
typedef TYPE_1__ Mpi2EventIrConfigElement_t ;
typedef TYPE_2__ Mpi2EventDataIrConfigChangeList_t ;


 int MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG ;
 scalar_t__ MPI2_VERSION ;
 int MPT_DEBUG_EVENT_WORK_TASK ;
 int _scsih_ir_fastpath (struct MPT3SAS_ADAPTER*,int ,int ) ;
 int _scsih_sas_ir_config_change_event_debug (struct MPT3SAS_ADAPTER*,TYPE_2__*) ;
 int _scsih_sas_pd_add (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int _scsih_sas_pd_delete (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int _scsih_sas_pd_expose (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int _scsih_sas_pd_hide (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int _scsih_sas_volume_add (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int _scsih_sas_volume_delete (struct MPT3SAS_ADAPTER*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_sas_ir_config_change_event(struct MPT3SAS_ADAPTER *ioc,
 struct fw_event_work *fw_event)
{
 Mpi2EventIrConfigElement_t *element;
 int i;
 u8 foreign_config;
 Mpi2EventDataIrConfigChangeList_t *event_data =
  (Mpi2EventDataIrConfigChangeList_t *)
  fw_event->event_data;

 if ((ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK) &&
      (!ioc->hide_ir_msg))
  _scsih_sas_ir_config_change_event_debug(ioc, event_data);

 foreign_config = (le32_to_cpu(event_data->Flags) &
     MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG) ? 1 : 0;

 element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
 if (ioc->shost_recovery &&
     ioc->hba_mpi_version_belonged != MPI2_VERSION) {
  for (i = 0; i < event_data->NumElements; i++, element++) {
   if (element->ReasonCode == 134)
    _scsih_ir_fastpath(ioc,
     le16_to_cpu(element->PhysDiskDevHandle),
     element->PhysDiskNum);
  }
  return;
 }

 for (i = 0; i < event_data->NumElements; i++, element++) {

  switch (element->ReasonCode) {
  case 129:
  case 135:
   if (!foreign_config)
    _scsih_sas_volume_add(ioc, element);
   break;
  case 128:
  case 131:
   if (!foreign_config)
    _scsih_sas_volume_delete(ioc,
        le16_to_cpu(element->VolDevHandle));
   break;
  case 133:
   if (!ioc->is_warpdrive)
    _scsih_sas_pd_hide(ioc, element);
   break;
  case 132:
   if (!ioc->is_warpdrive)
    _scsih_sas_pd_expose(ioc, element);
   break;
  case 134:
   if (!ioc->is_warpdrive)
    _scsih_sas_pd_add(ioc, element);
   break;
  case 130:
   if (!ioc->is_warpdrive)
    _scsih_sas_pd_delete(ioc, element);
   break;
  }
 }
}
