
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iw_point {int length; int pointer; } ;
struct TYPE_5__ {int reason_code; int command; } ;
struct TYPE_4__ {int value; int name; } ;
struct TYPE_6__ {TYPE_2__ mlme; TYPE_1__ wpa_param; } ;
struct ieee_param {int cmd; TYPE_3__ u; } ;
struct ieee80211_device {int wx_mutex; } ;


 int EFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;




 scalar_t__ IS_ERR (struct ieee_param*) ;
 int PTR_ERR (struct ieee_param*) ;
 scalar_t__ copy_to_user (int ,struct ieee_param*,int) ;
 int ieee80211_wpa_mlme (struct ieee80211_device*,int ,int ) ;
 int ieee80211_wpa_set_encryption (struct ieee80211_device*,struct ieee_param*,int) ;
 int ieee80211_wpa_set_param (struct ieee80211_device*,int ,int ) ;
 int ieee80211_wpa_set_wpa_ie (struct ieee80211_device*,struct ieee_param*,int) ;
 int kfree (struct ieee_param*) ;
 struct ieee_param* memdup_user (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*,int) ;

int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_point *p)
{
 struct ieee_param *param;
 int ret = 0;

 mutex_lock(&ieee->wx_mutex);


 if (p->length < sizeof(struct ieee_param) || !p->pointer) {
  ret = -EINVAL;
  goto out;
 }

 param = memdup_user(p->pointer, p->length);
 if (IS_ERR(param)) {
  ret = PTR_ERR(param);
  goto out;
 }

 switch (param->cmd) {
 case 128:
  ret = ieee80211_wpa_set_param(ieee, param->u.wpa_param.name,
     param->u.wpa_param.value);
  break;

 case 129:
  ret = ieee80211_wpa_set_wpa_ie(ieee, param, p->length);
  break;

 case 130:
  ret = ieee80211_wpa_set_encryption(ieee, param, p->length);
  break;

 case 131:
  ret = ieee80211_wpa_mlme(ieee, param->u.mlme.command,
       param->u.mlme.reason_code);
  break;

 default:
  printk("Unknown WPA supplicant request: %d\n", param->cmd);
  ret = -EOPNOTSUPP;
  break;
 }

 if (ret == 0 && copy_to_user(p->pointer, param, p->length))
  ret = -EFAULT;

 kfree(param);
out:
 mutex_unlock(&ieee->wx_mutex);

 return ret;
}
