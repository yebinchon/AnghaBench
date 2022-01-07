
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct security_priv {TYPE_1__* PMKIDList; } ;
struct adapter {struct security_priv securitypriv; } ;
struct TYPE_2__ {int Bssid; scalar_t__ bUsed; } ;


 int ETH_ALEN ;
 int NUM_PMKID_CACHE ;
 int memcmp (int ,int *,int ) ;

__attribute__((used)) static int SecIsInPMKIDList(struct adapter *Adapter, u8 *bssid)
{
 struct security_priv *psecuritypriv = &Adapter->securitypriv;
 int i = 0;

 do {
  if ((psecuritypriv->PMKIDList[i].bUsed) &&
      (!memcmp(psecuritypriv->PMKIDList[i].Bssid, bssid, ETH_ALEN)))
   break;
 } while (++i < NUM_PMKID_CACHE);

 if (i == NUM_PMKID_CACHE)
  i = -1;

 return i;
}
