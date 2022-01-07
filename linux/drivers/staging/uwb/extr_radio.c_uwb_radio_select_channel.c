
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {scalar_t__ active_pals; int beaconing_forced; } ;



__attribute__((used)) static int uwb_radio_select_channel(struct uwb_rc *rc)
{




 if (rc->active_pals == 0)
  return -1;
 if (rc->beaconing_forced)
  return rc->beaconing_forced;
 return 9;
}
