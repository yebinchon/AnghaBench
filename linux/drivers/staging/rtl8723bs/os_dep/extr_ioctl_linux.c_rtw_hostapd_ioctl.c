
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_point {int length; int pointer; } ;
struct ieee_param {int cmd; } ;
struct adapter {int hw_init_completed; } ;


 int DBG_871X (char*,int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ copy_from_user (struct ieee_param*,int ,int ) ;
 scalar_t__ copy_to_user (int ,struct ieee_param*,int ) ;
 int kfree (struct ieee_param*) ;
 int rtw_add_sta (struct net_device*,struct ieee_param*) ;
 int rtw_del_sta (struct net_device*,struct ieee_param*) ;
 int rtw_get_sta_wpaie (struct net_device*,struct ieee_param*) ;
 int rtw_hostapd_sta_flush (struct net_device*) ;
 int rtw_ioctl_acl_add_sta (struct net_device*,struct ieee_param*,int ) ;
 int rtw_ioctl_acl_remove_sta (struct net_device*,struct ieee_param*,int ) ;
 int rtw_ioctl_get_sta_data (struct net_device*,struct ieee_param*,int ) ;
 int rtw_ioctl_set_macaddr_acl (struct net_device*,struct ieee_param*,int ) ;
 struct ieee_param* rtw_malloc (int ) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int rtw_set_beacon (struct net_device*,struct ieee_param*,int ) ;
 int rtw_set_encryption (struct net_device*,struct ieee_param*,int ) ;
 int rtw_set_hidden_ssid (struct net_device*,struct ieee_param*,int ) ;
 int rtw_set_wps_assoc_resp (struct net_device*,struct ieee_param*,int ) ;
 int rtw_set_wps_beacon (struct net_device*,struct ieee_param*,int ) ;
 int rtw_set_wps_probe_resp (struct net_device*,struct ieee_param*,int ) ;

__attribute__((used)) static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
{
 struct ieee_param *param;
 int ret = 0;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 if (!padapter->hw_init_completed) {
  ret = -EPERM;
  goto out;
 }



 if (!p->pointer) {
  ret = -EINVAL;
  goto out;
 }

 param = rtw_malloc(p->length);
 if (param == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 if (copy_from_user(param, p->pointer, p->length)) {
  kfree(param);
  ret = -EFAULT;
  goto out;
 }



 switch (param->cmd) {
 case 138:

  rtw_hostapd_sta_flush(dev);

  break;

 case 139:

  ret = rtw_add_sta(dev, param);

  break;

 case 135:

  ret = rtw_del_sta(dev, param);

  break;

 case 134:

  ret = rtw_set_beacon(dev, param, p->length);

  break;

 case 128:

  ret = rtw_set_encryption(dev, param, p->length);

  break;

 case 136:

  ret = rtw_get_sta_wpaie(dev, param);

  break;

 case 130:

  ret = rtw_set_wps_beacon(dev, param, p->length);

  break;

 case 129:

  ret = rtw_set_wps_probe_resp(dev, param, p->length);

  break;

 case 131:

  ret = rtw_set_wps_assoc_resp(dev, param, p->length);

  break;

 case 133:

  ret = rtw_set_hidden_ssid(dev, param, p->length);

  break;

 case 137:

  ret = rtw_ioctl_get_sta_data(dev, param, p->length);

  break;

 case 132:

  ret = rtw_ioctl_set_macaddr_acl(dev, param, p->length);

  break;

 case 141:

  ret = rtw_ioctl_acl_add_sta(dev, param, p->length);

  break;

 case 140:

  ret = rtw_ioctl_acl_remove_sta(dev, param, p->length);

  break;

 default:
  DBG_871X("Unknown hostapd request: %d\n", param->cmd);
  ret = -EOPNOTSUPP;
  break;

 }

 if (ret == 0 && copy_to_user(p->pointer, param, p->length))
  ret = -EFAULT;


 kfree(param);

out:

 return ret;

}
