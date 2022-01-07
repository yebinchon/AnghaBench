
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rc_evt_get_ie {int dummy; } ;
struct TYPE_2__ {int wCommand; int bCommandType; } ;
struct uwb_rc_cmd_set_ie {TYPE_1__ rccb; } ;
struct uwb_rc {int ies_capacity; int ies_mutex; struct uwb_rc_cmd_set_ie* ies; } ;


 int UWB_RC_CET_GENERAL ;
 int UWB_RC_CMD_SET_IE ;
 int cpu_to_le16 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_rc_get_ie (struct uwb_rc*,struct uwb_rc_evt_get_ie**) ;

int uwb_rc_ie_setup(struct uwb_rc *uwb_rc)
{
 struct uwb_rc_evt_get_ie *ie_info = ((void*)0);
 int capacity;

 capacity = uwb_rc_get_ie(uwb_rc, &ie_info);
 if (capacity < 0)
  return capacity;

 mutex_lock(&uwb_rc->ies_mutex);

 uwb_rc->ies = (struct uwb_rc_cmd_set_ie *)ie_info;
 uwb_rc->ies->rccb.bCommandType = UWB_RC_CET_GENERAL;
 uwb_rc->ies->rccb.wCommand = cpu_to_le16(UWB_RC_CMD_SET_IE);
 uwb_rc->ies_capacity = capacity;

 mutex_unlock(&uwb_rc->ies_mutex);

 return 0;
}
