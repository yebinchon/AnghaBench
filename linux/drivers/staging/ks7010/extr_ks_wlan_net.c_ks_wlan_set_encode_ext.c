
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
union iwreq_data {TYPE_1__ encoding; } ;
struct TYPE_7__ {int * sa_data; } ;
struct wpa_key {int key_len; int ext_flags; int alg; int * rx_mic_key; int * tx_mic_key; int * key_val; TYPE_2__ addr; int * rx_seq; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int txkey; int key_mgmt_suite; struct wpa_key* key; } ;
struct TYPE_9__ {int privacy_invoked; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_5__ wpa; TYPE_4__ reg; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_8__ {int * sa_data; } ;
struct iw_encode_ext {int ext_flags; int alg; int key_len; int * key; TYPE_3__ addr; int * rx_seq; } ;


 int EINVAL ;
 int EPERM ;




 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_EXT_RX_SEQ_VALID ;
 int IW_ENCODE_EXT_SET_TX_KEY ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_SEQ_MAX_SIZE ;
 scalar_t__ SLP_SLEEP ;
 scalar_t__ SME_SET_KEY1 ;
 scalar_t__ SME_SET_TXKEY ;
 unsigned int SME_WEP_FLAG ;
 scalar_t__ SME_WEP_FLAG_REQUEST ;
 unsigned int SME_WEP_INDEX ;
 int SME_WEP_VAL1 ;
 unsigned int SME_WEP_VAL_MASK ;
 int ether_addr_copy (int *,int *) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,scalar_t__) ;
 int memcpy (int *,int *,int) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_encode_ext(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *dwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 struct iw_encode_ext *enc;
 int index = dwrq->encoding.flags & IW_ENCODE_INDEX;
 unsigned int commit = 0;
 struct wpa_key *key;

 enc = (struct iw_encode_ext *)extra;
 if (!enc)
  return -EINVAL;

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 if (index < 1 || index > 4)
  return -EINVAL;
 index--;
 key = &priv->wpa.key[index];

 if (dwrq->encoding.flags & IW_ENCODE_DISABLED)
  key->key_len = 0;

 key->ext_flags = enc->ext_flags;
 if (enc->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
  priv->wpa.txkey = index;
  commit |= SME_WEP_INDEX;
 } else if (enc->ext_flags & IW_ENCODE_EXT_RX_SEQ_VALID) {
  memcpy(&key->rx_seq[0], &enc->rx_seq[0], IW_ENCODE_SEQ_MAX_SIZE);
 }

 ether_addr_copy(&key->addr.sa_data[0], &enc->addr.sa_data[0]);

 switch (enc->alg) {
 case 130:
  if (priv->reg.privacy_invoked) {
   priv->reg.privacy_invoked = 0x00;
   commit |= SME_WEP_FLAG;
  }
  key->key_len = 0;

  break;
 case 128:
 case 131:
  if (!priv->reg.privacy_invoked) {
   priv->reg.privacy_invoked = 0x01;
   commit |= SME_WEP_FLAG;
  }
  if (enc->key_len) {
   memcpy(&key->key_val[0], &enc->key[0], enc->key_len);
   key->key_len = enc->key_len;
   commit |= (SME_WEP_VAL1 << index);
  }
  break;
 case 129:
  if (!priv->reg.privacy_invoked) {
   priv->reg.privacy_invoked = 0x01;
   commit |= SME_WEP_FLAG;
  }
  if (enc->key_len == 32) {
   memcpy(&key->key_val[0], &enc->key[0], enc->key_len - 16);
   key->key_len = enc->key_len - 16;
   if (priv->wpa.key_mgmt_suite == 4) {
    memcpy(&key->tx_mic_key[0], &enc->key[16], 8);
    memcpy(&key->rx_mic_key[0], &enc->key[16], 8);
   } else {
    memcpy(&key->tx_mic_key[0], &enc->key[16], 8);
    memcpy(&key->rx_mic_key[0], &enc->key[24], 8);
   }
   commit |= (SME_WEP_VAL1 << index);
  }
  break;
 default:
  return -EINVAL;
 }
 key->alg = enc->alg;

 if (commit) {
  if (commit & SME_WEP_INDEX)
   hostif_sme_enqueue(priv, SME_SET_TXKEY);
  if (commit & SME_WEP_VAL_MASK)
   hostif_sme_enqueue(priv, SME_SET_KEY1 + index);
  if (commit & SME_WEP_FLAG)
   hostif_sme_enqueue(priv, SME_WEP_FLAG_REQUEST);
 }

 return 0;
}
