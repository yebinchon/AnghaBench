
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int snooze_guard; } ;
struct TYPE_3__ {int rsn_enabled; int wpa_enabled; } ;
struct ks_wlan_private {int mac_address_valid; TYPE_2__ psstatus; TYPE_1__ wpa; int net_dev; } ;
 int SME_FRAGMENTATION_THRESHOLD_CONFIRM ;
 int SME_MULTICAST_CONFIRM ;
 int SME_MULTICAST_REQUEST ;
 int SME_RSN_AUTH_CONFIRM ;
 int SME_RSN_ENABLED_CONFIRM ;
 int SME_RSN_MCAST_CONFIRM ;
 int SME_RSN_MODE_CONFIRM ;
 int SME_RSN_UCAST_CONFIRM ;
 int SME_RTS_THRESHOLD_CONFIRM ;
 int SME_SET_GMK1_TSC ;
 int SME_SET_GMK2_TSC ;
 int SME_SET_PMK_TSC ;
 int SME_WEP_FLAG_CONFIRM ;
 int SME_WEP_INDEX_CONFIRM ;
 int SME_WEP_KEY1_CONFIRM ;
 int SME_WEP_KEY2_CONFIRM ;
 int SME_WEP_KEY3_CONFIRM ;
 int SME_WEP_KEY4_CONFIRM ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int get_dword (struct ks_wlan_private*) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int netdev_err (int ,char*,int,int) ;

__attribute__((used)) static
void hostif_mib_set_confirm(struct ks_wlan_private *priv)
{
 u32 mib_status;
 u32 mib_attribute;

 mib_status = get_dword(priv);
 mib_attribute = get_dword(priv);

 if (mib_status) {

  netdev_err(priv->net_dev, "error :: attribute=%08X, status=%08X\n",
      mib_attribute, mib_status);
 }

 switch (mib_attribute) {
 case 142:
  hostif_sme_enqueue(priv, SME_RTS_THRESHOLD_CONFIRM);
  break;
 case 151:
  hostif_sme_enqueue(priv, SME_FRAGMENTATION_THRESHOLD_CONFIRM);
  break;
 case 141:
  if (!priv->wpa.wpa_enabled)
   hostif_sme_enqueue(priv, SME_WEP_INDEX_CONFIRM);
  break;
 case 140:
  if (priv->wpa.rsn_enabled)
   hostif_sme_enqueue(priv, SME_SET_PMK_TSC);
  else
   hostif_sme_enqueue(priv, SME_WEP_KEY1_CONFIRM);
  break;
 case 139:
  if (priv->wpa.rsn_enabled)
   hostif_sme_enqueue(priv, SME_SET_GMK1_TSC);
  else
   hostif_sme_enqueue(priv, SME_WEP_KEY2_CONFIRM);
  break;
 case 138:
  if (priv->wpa.rsn_enabled)
   hostif_sme_enqueue(priv, SME_SET_GMK2_TSC);
  else
   hostif_sme_enqueue(priv, SME_WEP_KEY3_CONFIRM);
  break;
 case 137:
  if (!priv->wpa.rsn_enabled)
   hostif_sme_enqueue(priv, SME_WEP_KEY4_CONFIRM);
  break;
 case 147:
  if (!priv->wpa.rsn_enabled)
   hostif_sme_enqueue(priv, SME_WEP_FLAG_CONFIRM);
  break;
 case 143:
  hostif_sme_enqueue(priv, SME_RSN_ENABLED_CONFIRM);
  break;
 case 130:
  hostif_sme_enqueue(priv, SME_RSN_MODE_CONFIRM);
  break;
 case 134:
  hostif_sme_enqueue(priv, SME_MULTICAST_REQUEST);
  break;
 case 133:
  hostif_sme_enqueue(priv, SME_MULTICAST_CONFIRM);
  break;
 case 136:
  priv->mac_address_valid = 1;
  break;
 case 145:
  hostif_sme_enqueue(priv, SME_RSN_MCAST_CONFIRM);
  break;
 case 144:
  hostif_sme_enqueue(priv, SME_RSN_UCAST_CONFIRM);
  break;
 case 146:
  hostif_sme_enqueue(priv, SME_RSN_AUTH_CONFIRM);
  break;
 case 150:
  if (atomic_read(&priv->psstatus.snooze_guard))
   atomic_set(&priv->psstatus.snooze_guard, 0);
  break;
 case 149:
  if (atomic_read(&priv->psstatus.snooze_guard))
   atomic_set(&priv->psstatus.snooze_guard, 0);
  break;
 case 148:
 case 132:
 case 135:
 case 129:
 case 128:
 case 131:
 default:
  break;
 }
}
