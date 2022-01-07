
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
struct security_priv {TYPE_1__* PMKIDList; } ;
struct adapter {struct security_priv securitypriv; } ;
struct TYPE_2__ {int PMKID; } ;


 int memcpy (int*,int *,int) ;

__attribute__((used)) static int rtw_append_pmkid(struct adapter *Adapter, int iEntry, u8 *ie, uint ie_len)
{
 struct security_priv *psecuritypriv = &Adapter->securitypriv;

 if (ie[13] <= 20) {

  ie[ie_len] = 1;
  ie_len++;
  ie[ie_len] = 0;
  ie_len++;
  memcpy(&ie[ie_len], &psecuritypriv->PMKIDList[iEntry].PMKID, 16);

  ie_len += 16;
  ie[13] += 18;
 }
 return ie_len;
}
