
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int beaconing; int ies_mutex; int ies; } ;
struct uwb_ie_hdr {int dummy; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct uwb_ie_hdr* uwb_ie_next (void**,size_t*) ;
 int uwb_rc_ie_add_one (struct uwb_rc*,struct uwb_ie_hdr const*) ;
 int uwb_rc_set_ie (struct uwb_rc*,int ) ;

int uwb_rc_ie_add(struct uwb_rc *uwb_rc,
    const struct uwb_ie_hdr *ies, size_t size)
{
 int result = 0;
 void *ptr;
 const struct uwb_ie_hdr *ie;

 mutex_lock(&uwb_rc->ies_mutex);

 ptr = (void *)ies;
 for (;;) {
  ie = uwb_ie_next(&ptr, &size);
  if (!ie)
   break;

  result = uwb_rc_ie_add_one(uwb_rc, ie);
  if (result < 0)
   break;
 }
 if (result >= 0) {
  if (size == 0) {
   if (uwb_rc->beaconing != -1)
    result = uwb_rc_set_ie(uwb_rc, uwb_rc->ies);
  } else
   result = -EINVAL;
 }

 mutex_unlock(&uwb_rc->ies_mutex);

 return result;
}
