
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ht_option; } ;
struct sta_info {int flags; int qos_option; TYPE_3__ htpriv; } ;
struct TYPE_5__ {int ht_option; } ;
struct TYPE_4__ {scalar_t__ qos_option; } ;
struct mlme_priv {TYPE_2__ htpriv; TYPE_1__ qospriv; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int WLAN_STA_HT ;
 int WLAN_STA_WME ;
 int update_sta_info_apmode (struct adapter*,struct sta_info*) ;

void sta_info_update(struct adapter *padapter, struct sta_info *psta)
{
 int flags = psta->flags;
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);


 if (WLAN_STA_WME & flags)
  psta->qos_option = 1;
 else
  psta->qos_option = 0;

 if (pmlmepriv->qospriv.qos_option == 0)
  psta->qos_option = 0;


 if (WLAN_STA_HT & flags) {
  psta->htpriv.ht_option = 1;
  psta->qos_option = 1;
 } else {
  psta->htpriv.ht_option = 0;
 }

 if (!pmlmepriv->htpriv.ht_option)
  psta->htpriv.ht_option = 0;

 update_sta_info_apmode(padapter, psta);
}
