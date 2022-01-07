
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlme_ext_info {TYPE_1__* FW_sta_info; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_2__ {int status; } ;


 unsigned int IBSS_START_MAC_ID ;
 unsigned int NUM_STA ;
 int _FAIL ;

int is_IBSS_empty(struct adapter *padapter)
{
 unsigned int i;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 for (i = IBSS_START_MAC_ID; i < NUM_STA; i++) {
  if (pmlmeinfo->FW_sta_info[i].status == 1)
   return _FAIL;
 }
 return 1;
}
