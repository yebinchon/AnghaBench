
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct stassoc_event {int cam_id; int macaddr; } ;
struct sta_info {int ieee8021x_blocked; int XPrivacy; int mac_id; scalar_t__ qos_option; } ;
struct mlme_priv {int lock; } ;
struct TYPE_5__ {int asoc_sta_count; } ;
struct TYPE_4__ {int AuthAlgrthm; int PrivacyAlgrthm; } ;
struct _adapter {TYPE_2__ stapriv; TYPE_1__ securitypriv; int acl_list; struct mlme_priv mlmepriv; } ;


 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int le32_to_cpu (int ) ;
 int r8712_access_ctrl (int *,int ) ;
 struct sta_info* r8712_alloc_stainfo (TYPE_2__*,int ) ;
 struct sta_info* r8712_get_stainfo (TYPE_2__*,int ) ;
 int r8712_indicate_connect (struct _adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
{
 unsigned long irqL;
 struct sta_info *psta;
 struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
 struct stassoc_event *pstassoc = (struct stassoc_event *)pbuf;


 if (!r8712_access_ctrl(&adapter->acl_list, pstassoc->macaddr))
  return;
 psta = r8712_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
 if (psta != ((void*)0)) {




  return;
 }

 psta = r8712_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
 if (psta == ((void*)0))
  return;

 psta->qos_option = 0;
 psta->mac_id = le32_to_cpu(pstassoc->cam_id);


 if (adapter->securitypriv.AuthAlgrthm == 2)
  psta->XPrivacy = adapter->securitypriv.PrivacyAlgrthm;
 psta->ieee8021x_blocked = 0;
 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
     check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
  if (adapter->stapriv.asoc_sta_count == 2) {

   r8712_indicate_connect(adapter);
  }
 }
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
}
