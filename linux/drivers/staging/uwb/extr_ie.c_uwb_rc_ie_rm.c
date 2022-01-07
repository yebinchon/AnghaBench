
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int beaconing; int ies_mutex; int ies; } ;
typedef enum uwb_ie { ____Placeholder_uwb_ie } uwb_ie ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_rc_ie_cache_rm (struct uwb_rc*,int) ;
 int uwb_rc_set_ie (struct uwb_rc*,int ) ;

int uwb_rc_ie_rm(struct uwb_rc *uwb_rc, enum uwb_ie element_id)
{
 int result = 0;

 mutex_lock(&uwb_rc->ies_mutex);

 uwb_rc_ie_cache_rm(uwb_rc, element_id);

 if (uwb_rc->beaconing != -1)
  result = uwb_rc_set_ie(uwb_rc, uwb_rc->ies);

 mutex_unlock(&uwb_rc->ies_mutex);

 return result;
}
