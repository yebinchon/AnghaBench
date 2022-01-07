
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int length; } ;
union iwreq_data {TYPE_2__ encoding; } ;
typedef char u8 ;
typedef char u32 ;
struct sw_cam_table {int dummy; } ;
struct TYPE_3__ {char tx_keyidx; } ;
struct rtllib_device {int wx_set_enc; int pairwise_key_type; TYPE_1__ crypt_info; int swcamtable; int group_key_type; int ips_mutex; } ;
struct r8192_priv {struct rtllib_device* rtllib; int wx_mutex; int up; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int COMP_SEC ;
 int ENETDOWN ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_INDEX ;
 int KEY_TYPE_NA ;
 int KEY_TYPE_WEP104 ;
 int KEY_TYPE_WEP40 ;
 int RT_TRACE (int ,char*) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_info (struct net_device*,char*) ;
 int rtl92e_cam_reset (struct net_device*) ;
 int rtl92e_enable_hw_security_config (struct net_device*) ;
 int rtl92e_ips_leave (struct net_device*) ;
 int rtl92e_set_key (struct net_device*,char,char,int ,char*,int ,char*) ;
 int rtl92e_set_swcam (struct net_device*,char,char,int ,char*,int ,char*,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_wx_set_encode (struct rtllib_device*,struct iw_request_info*,union iwreq_data*,char*) ;

__attribute__((used)) static int _rtl92e_wx_set_enc(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *wrqu, char *key)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 int ret;

 struct rtllib_device *ieee = priv->rtllib;
 u32 hwkey[4] = {0, 0, 0, 0};
 u8 mask = 0xff;
 u32 key_idx = 0;
 u8 zero_addr[4][6] = {{0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
        {0x00, 0x00, 0x00, 0x00, 0x00, 0x01},
        {0x00, 0x00, 0x00, 0x00, 0x00, 0x02},
        {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
 int i;

 if (priv->bHwRadioOff)
  return 0;

 if (!priv->up)
  return -ENETDOWN;

 priv->rtllib->wx_set_enc = 1;
 mutex_lock(&priv->rtllib->ips_mutex);
 rtl92e_ips_leave(dev);
 mutex_unlock(&priv->rtllib->ips_mutex);
 mutex_lock(&priv->wx_mutex);

 RT_TRACE(COMP_SEC, "Setting SW wep key");
 ret = rtllib_wx_set_encode(priv->rtllib, info, wrqu, key);
 mutex_unlock(&priv->wx_mutex);

 if (wrqu->encoding.flags & IW_ENCODE_DISABLED) {
  ieee->pairwise_key_type = ieee->group_key_type = KEY_TYPE_NA;
  rtl92e_cam_reset(dev);
  memset(priv->rtllib->swcamtable, 0,
         sizeof(struct sw_cam_table) * 32);
  goto end_hw_sec;
 }
 if (wrqu->encoding.length != 0) {
  for (i = 0; i < 4; i++) {
   hwkey[i] |= key[4 * i + 0] & mask;
   if (i == 1 && (4 * i + 1) == wrqu->encoding.length)
    mask = 0x00;
   if (i == 3 && (4 * i + 1) == wrqu->encoding.length)
    mask = 0x00;
   hwkey[i] |= (key[4 * i + 1] & mask) << 8;
   hwkey[i] |= (key[4 * i + 2] & mask) << 16;
   hwkey[i] |= (key[4 * i + 3] & mask) << 24;
  }

  switch (wrqu->encoding.flags & IW_ENCODE_INDEX) {
  case 0:
   key_idx = ieee->crypt_info.tx_keyidx;
   break;
  case 1:
   key_idx = 0;
   break;
  case 2:
   key_idx = 1;
   break;
  case 3:
   key_idx = 2;
   break;
  case 4:
   key_idx = 3;
   break;
  default:
   break;
  }
  if (wrqu->encoding.length == 0x5) {
   ieee->pairwise_key_type = KEY_TYPE_WEP40;
   rtl92e_enable_hw_security_config(dev);
  }

  else if (wrqu->encoding.length == 0xd) {
   ieee->pairwise_key_type = KEY_TYPE_WEP104;
   rtl92e_enable_hw_security_config(dev);
   rtl92e_set_key(dev, key_idx, key_idx, KEY_TYPE_WEP104,
           zero_addr[key_idx], 0, hwkey);
   rtl92e_set_swcam(dev, key_idx, key_idx, KEY_TYPE_WEP104,
      zero_addr[key_idx], 0, hwkey, 0);
  } else {
   netdev_info(dev,
        "wrong type in WEP, not WEP40 and WEP104\n");
  }
 }

end_hw_sec:
 priv->rtllib->wx_set_enc = 0;
 return ret;
}
