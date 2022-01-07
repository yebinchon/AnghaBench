
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
typedef int targ_id ;
struct esas2r_adapter {int dummy; } ;


 scalar_t__ TS_LUN_CHANGE ;
 scalar_t__ TS_NOT_PRESENT ;
 scalar_t__ TS_PRESENT ;
 int esas2r_queue_fw_event (struct esas2r_adapter*,int ,int *,int) ;
 int fw_event_lun_change ;
 int fw_event_not_present ;
 int fw_event_present ;

void esas2r_target_state_changed(struct esas2r_adapter *a, u16 targ_id,
     u8 state)
{
 if (state == TS_LUN_CHANGE)
  esas2r_queue_fw_event(a, fw_event_lun_change, &targ_id,
          sizeof(targ_id));
 else if (state == TS_PRESENT)
  esas2r_queue_fw_event(a, fw_event_present, &targ_id,
          sizeof(targ_id));
 else if (state == TS_NOT_PRESENT)
  esas2r_queue_fw_event(a, fw_event_not_present, &targ_id,
          sizeof(targ_id));
}
