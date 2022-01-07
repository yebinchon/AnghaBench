
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtllib_device {TYPE_1__* PMKIDList; } ;
struct TYPE_2__ {int Bssid; scalar_t__ bUsed; } ;


 int ETH_ALEN ;
 int NUM_PMKID_CACHE ;
 scalar_t__ memcmp (int ,int *,int ) ;

__attribute__((used)) static inline int SecIsInPMKIDList(struct rtllib_device *ieee, u8 *bssid)
{
 int i = 0;

 do {
  if ((ieee->PMKIDList[i].bUsed) &&
     (memcmp(ieee->PMKIDList[i].Bssid, bssid, ETH_ALEN) == 0))
   break;
  i++;
 } while (i < NUM_PMKID_CACHE);

 if (i == NUM_PMKID_CACHE)
  i = -1;
 return i;
}
