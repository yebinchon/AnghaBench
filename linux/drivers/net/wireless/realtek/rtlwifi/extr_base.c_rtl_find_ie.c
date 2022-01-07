
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ variable; } ;
struct TYPE_4__ {TYPE_1__ beacon; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;



u8 *rtl_find_ie(u8 *data, unsigned int len, u8 ie)
{
 struct ieee80211_mgmt *mgmt = (void *)data;
 u8 *pos, *end;

 pos = (u8 *)mgmt->u.beacon.variable;
 end = data + len;
 while (pos < end) {
  if (pos + 2 + pos[1] > end)
   return ((void*)0);

  if (pos[0] == ie)
   return pos;

  pos += 2 + pos[1];
 }
 return ((void*)0);
}
