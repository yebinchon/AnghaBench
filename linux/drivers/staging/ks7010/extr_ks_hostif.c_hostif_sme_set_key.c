
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* key; int txkey; } ;
struct TYPE_4__ {int privacy_invoked; } ;
struct ks_wlan_private {TYPE_3__ wpa; TYPE_1__ reg; } ;
struct TYPE_5__ {int * rx_seq; int key_len; int * key_val; } ;


 int DOT11_GMK1_TSC ;
 int DOT11_GMK2_TSC ;
 int DOT11_PMK_TSC ;
 int DOT11_PRIVACY_INVOKED ;
 int DOT11_WEP_DEFAULT_KEY_ID ;
 int DOT11_WEP_DEFAULT_KEY_VALUE1 ;
 int DOT11_WEP_DEFAULT_KEY_VALUE2 ;
 int DOT11_WEP_DEFAULT_KEY_VALUE3 ;
 int DOT11_WEP_DEFAULT_KEY_VALUE4 ;
 int WPA_RX_SEQ_LEN ;
 int hostif_mib_set_request_bool (struct ks_wlan_private*,int ,int ) ;
 int hostif_mib_set_request_int (struct ks_wlan_private*,int ,int ) ;
 int hostif_mib_set_request_ostring (struct ks_wlan_private*,int ,int *,int ) ;

__attribute__((used)) static
void hostif_sme_set_key(struct ks_wlan_private *priv, int type)
{
 switch (type) {
 case 136:
  hostif_mib_set_request_bool(priv, DOT11_PRIVACY_INVOKED,
         priv->reg.privacy_invoked);
  break;
 case 128:
  hostif_mib_set_request_int(priv, DOT11_WEP_DEFAULT_KEY_ID,
        priv->wpa.txkey);
  break;
 case 133:
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE1,
            &priv->wpa.key[0].key_val[0],
            priv->wpa.key[0].key_len);
  break;
 case 132:
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE2,
            &priv->wpa.key[1].key_val[0],
            priv->wpa.key[1].key_len);
  break;
 case 131:
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE3,
            &priv->wpa.key[2].key_val[0],
            priv->wpa.key[2].key_len);
  break;
 case 130:
  hostif_mib_set_request_ostring(priv,
            DOT11_WEP_DEFAULT_KEY_VALUE4,
            &priv->wpa.key[3].key_val[0],
            priv->wpa.key[3].key_len);
  break;
 case 129:
  hostif_mib_set_request_ostring(priv, DOT11_PMK_TSC,
            &priv->wpa.key[0].rx_seq[0],
            WPA_RX_SEQ_LEN);
  break;
 case 135:
  hostif_mib_set_request_ostring(priv, DOT11_GMK1_TSC,
            &priv->wpa.key[1].rx_seq[0],
            WPA_RX_SEQ_LEN);
  break;
 case 134:
  hostif_mib_set_request_ostring(priv, DOT11_GMK2_TSC,
            &priv->wpa.key[2].rx_seq[0],
            WPA_RX_SEQ_LEN);
  break;
 }
}
