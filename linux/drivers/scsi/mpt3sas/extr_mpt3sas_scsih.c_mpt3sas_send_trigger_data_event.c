
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fw_event_work {int event_data; struct MPT3SAS_ADAPTER* ioc; int event; } ;
struct SL_WH_TRIGGERS_EVENT_DATA_T {int dummy; } ;
struct MPT3SAS_ADAPTER {scalar_t__ is_driver_loading; } ;


 int MPT3SAS_PROCESS_TRIGGER_DIAG ;
 int _scsih_fw_event_add (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 struct fw_event_work* alloc_fw_event_work (int) ;
 int fw_event_work_put (struct fw_event_work*) ;
 int memcpy (int ,struct SL_WH_TRIGGERS_EVENT_DATA_T*,int) ;

void
mpt3sas_send_trigger_data_event(struct MPT3SAS_ADAPTER *ioc,
 struct SL_WH_TRIGGERS_EVENT_DATA_T *event_data)
{
 struct fw_event_work *fw_event;
 u16 sz;

 if (ioc->is_driver_loading)
  return;
 sz = sizeof(*event_data);
 fw_event = alloc_fw_event_work(sz);
 if (!fw_event)
  return;
 fw_event->event = MPT3SAS_PROCESS_TRIGGER_DIAG;
 fw_event->ioc = ioc;
 memcpy(fw_event->event_data, event_data, sizeof(*event_data));
 _scsih_fw_event_add(ioc, fw_event);
 fw_event_work_put(fw_event);
}
