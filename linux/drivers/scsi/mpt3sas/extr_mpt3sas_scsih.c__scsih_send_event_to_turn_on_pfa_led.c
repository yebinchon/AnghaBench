
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fw_event_work {struct MPT3SAS_ADAPTER* ioc; int device_handle; int event; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;


 int MPT3SAS_TURN_ON_PFA_LED ;
 int _scsih_fw_event_add (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ;
 struct fw_event_work* alloc_fw_event_work (int ) ;
 int fw_event_work_put (struct fw_event_work*) ;

__attribute__((used)) static void
_scsih_send_event_to_turn_on_pfa_led(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
 struct fw_event_work *fw_event;

 fw_event = alloc_fw_event_work(0);
 if (!fw_event)
  return;
 fw_event->event = MPT3SAS_TURN_ON_PFA_LED;
 fw_event->device_handle = handle;
 fw_event->ioc = ioc;
 _scsih_fw_event_add(ioc, fw_event);
 fw_event_work_put(fw_event);
}
