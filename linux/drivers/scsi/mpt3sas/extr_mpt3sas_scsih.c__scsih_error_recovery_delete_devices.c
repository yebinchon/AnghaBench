
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {struct MPT3SAS_ADAPTER* ioc; int event; } ;
struct MPT3SAS_ADAPTER {scalar_t__ is_driver_loading; } ;


 int MPT3SAS_REMOVE_UNRESPONDING_DEVICES ;
 int _scsih_fw_event_add (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 struct fw_event_work* alloc_fw_event_work (int ) ;
 int fw_event_work_put (struct fw_event_work*) ;

__attribute__((used)) static void
_scsih_error_recovery_delete_devices(struct MPT3SAS_ADAPTER *ioc)
{
 struct fw_event_work *fw_event;

 if (ioc->is_driver_loading)
  return;
 fw_event = alloc_fw_event_work(0);
 if (!fw_event)
  return;
 fw_event->event = MPT3SAS_REMOVE_UNRESPONDING_DEVICES;
 fw_event->ioc = ioc;
 _scsih_fw_event_add(ioc, fw_event);
 fw_event_work_put(fw_event);
}
