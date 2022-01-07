
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct _tr_list {int list; scalar_t__ handle; } ;
struct MPT3SAS_ADAPTER {int delayed_tr_list; int pd_handles; scalar_t__ is_warpdrive; } ;
struct TYPE_5__ {int NumElements; int * ConfigElement; int Flags; } ;
struct TYPE_4__ {scalar_t__ ReasonCode; int VolDevHandle; int PhysDiskDevHandle; } ;
typedef TYPE_1__ Mpi2EventIrConfigElement_t ;
typedef TYPE_2__ Mpi2EventDataIrConfigChangeList_t ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG ;
 scalar_t__ MPI2_EVENT_IR_CHANGE_RC_REMOVED ;
 scalar_t__ MPI2_EVENT_IR_CHANGE_RC_UNHIDE ;
 scalar_t__ MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED ;
 int _scsih_set_volume_delete_flag (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int _scsih_set_volume_handle_for_tr (scalar_t__,scalar_t__*,scalar_t__*) ;
 int _scsih_tm_tr_send (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int _scsih_tm_tr_volume_send (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 int clear_bit (scalar_t__,int ) ;
 int dewtprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,scalar_t__) ;
 struct _tr_list* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
_scsih_check_ir_config_unhide_events(struct MPT3SAS_ADAPTER *ioc,
 Mpi2EventDataIrConfigChangeList_t *event_data)
{
 Mpi2EventIrConfigElement_t *element;
 int i;
 u16 handle, volume_handle, a, b;
 struct _tr_list *delayed_tr;

 a = 0;
 b = 0;

 if (ioc->is_warpdrive)
  return;


 element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
 for (i = 0; i < event_data->NumElements; i++, element++) {
  if (le32_to_cpu(event_data->Flags) &
      MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG)
   continue;
  if (element->ReasonCode ==
      MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED ||
      element->ReasonCode ==
      MPI2_EVENT_IR_CHANGE_RC_REMOVED) {
   volume_handle = le16_to_cpu(element->VolDevHandle);
   _scsih_set_volume_delete_flag(ioc, volume_handle);
   _scsih_set_volume_handle_for_tr(volume_handle, &a, &b);
  }
 }


 element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
 for (i = 0; i < event_data->NumElements; i++, element++) {
  if (le32_to_cpu(event_data->Flags) &
      MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG)
   continue;
  if (element->ReasonCode == MPI2_EVENT_IR_CHANGE_RC_UNHIDE) {
   volume_handle = le16_to_cpu(element->VolDevHandle);
   _scsih_set_volume_handle_for_tr(volume_handle, &a, &b);
  }
 }

 if (a)
  _scsih_tm_tr_volume_send(ioc, a);
 if (b)
  _scsih_tm_tr_volume_send(ioc, b);


 element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
 for (i = 0; i < event_data->NumElements; i++, element++) {
  if (element->ReasonCode != MPI2_EVENT_IR_CHANGE_RC_UNHIDE)
   continue;
  handle = le16_to_cpu(element->PhysDiskDevHandle);
  volume_handle = le16_to_cpu(element->VolDevHandle);
  clear_bit(handle, ioc->pd_handles);
  if (!volume_handle)
   _scsih_tm_tr_send(ioc, handle);
  else if (volume_handle == a || volume_handle == b) {
   delayed_tr = kzalloc(sizeof(*delayed_tr), GFP_ATOMIC);
   BUG_ON(!delayed_tr);
   INIT_LIST_HEAD(&delayed_tr->list);
   delayed_tr->handle = handle;
   list_add_tail(&delayed_tr->list, &ioc->delayed_tr_list);
   dewtprintk(ioc,
       ioc_info(ioc, "DELAYED:tr:handle(0x%04x), (open)\n",
         handle));
  } else
   _scsih_tm_tr_send(ioc, handle);
 }
}
