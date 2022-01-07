
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct adapter {int hw_init_completed; } ;
typedef enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;


 int DBG_871X (char*) ;
 int EINVAL ;
 int EPERM ;




 int Ndis802_11APMode ;
 int Ndis802_11AutoUnknown ;
 int Ndis802_11IBSS ;
 int Ndis802_11Infrastructure ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _FAIL ;
 int _drv_err_ ;
 int _module_rtl871x_ioctl_os_c ;
 int * iw_operation_mode ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 scalar_t__ rtw_pwr_wakeup (struct adapter*) ;
 int rtw_set_802_11_infrastructure_mode (struct adapter*,int) ;
 int rtw_setopmode_cmd (struct adapter*,int,int) ;

__attribute__((used)) static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType ;
 int ret = 0;

 if (_FAIL == rtw_pwr_wakeup(padapter)) {
  ret = -EPERM;
  goto exit;
 }

 if (!padapter->hw_init_completed) {
  ret = -EPERM;
  goto exit;
 }

 switch (wrqu->mode) {
  case 130:
   networkType = Ndis802_11AutoUnknown;
   DBG_871X("set_mode = IW_MODE_AUTO\n");
   break;
  case 131:
   networkType = Ndis802_11IBSS;
   DBG_871X("set_mode = IW_MODE_ADHOC\n");
   break;
  case 128:
   networkType = Ndis802_11APMode;
   DBG_871X("set_mode = IW_MODE_MASTER\n");

   break;
  case 129:
   networkType = Ndis802_11Infrastructure;
   DBG_871X("set_mode = IW_MODE_INFRA\n");
   break;

  default :
   ret = -EINVAL;
   RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("\n Mode: %s is not supported \n", iw_operation_mode[wrqu->mode]));
   goto exit;
 }
 if (rtw_set_802_11_infrastructure_mode(padapter, networkType) ==0) {

  ret = -EPERM;
  goto exit;

 }

 rtw_setopmode_cmd(padapter, networkType, 1);

exit:
 return ret;
}
