
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int privacy_invoked; TYPE_2__* wep_key; int wep_index; } ;
struct TYPE_4__ {int wpa_enabled; } ;
struct ks_wlan_private {TYPE_3__ reg; TYPE_1__ wpa; } ;
struct TYPE_5__ {int size; int * val; } ;


 int DOT11_PRIVACY_INVOKED ;
 int DOT11_WEP_DEFAULT_KEY_ID ;
 int DOT11_WEP_DEFAULT_KEY_VALUE1 ;
 int DOT11_WEP_DEFAULT_KEY_VALUE2 ;
 int DOT11_WEP_DEFAULT_KEY_VALUE3 ;
 int DOT11_WEP_DEFAULT_KEY_VALUE4 ;






 int hostif_mib_set_request_bool (struct ks_wlan_private*,int ,int ) ;
 int hostif_mib_set_request_int (struct ks_wlan_private*,int ,int ) ;
 int hostif_mib_set_request_ostring (struct ks_wlan_private*,int ,int *,int ) ;

__attribute__((used)) static void hostif_sme_set_wep(struct ks_wlan_private *priv, int type)
{
 switch (type) {
 case 132:
  hostif_mib_set_request_int(priv, DOT11_WEP_DEFAULT_KEY_ID,
        priv->reg.wep_index);
  break;
 case 131:
  if (priv->wpa.wpa_enabled)
   return;
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE1,
            &priv->reg.wep_key[0].val[0],
            priv->reg.wep_key[0].size);
  break;
 case 130:
  if (priv->wpa.wpa_enabled)
   return;
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE2,
            &priv->reg.wep_key[1].val[0],
            priv->reg.wep_key[1].size);
  break;
 case 129:
  if (priv->wpa.wpa_enabled)
   return;
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE3,
            &priv->reg.wep_key[2].val[0],
            priv->reg.wep_key[2].size);
  break;
 case 128:
  if (priv->wpa.wpa_enabled)
   return;
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE4,
            &priv->reg.wep_key[3].val[0],
            priv->reg.wep_key[3].size);
  break;
 case 133:
  hostif_mib_set_request_bool(priv, DOT11_PRIVACY_INVOKED,
         priv->reg.privacy_invoked);
  break;
 }
}
