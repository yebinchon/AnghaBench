
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iwreq_data {int param; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; } ;
struct TYPE_2__ {int btkip_countermeasure; int ndisauthtype; int AuthAlgrthm; void* XGrpPrivacy; void* PrivacyAlgrthm; int ndisencryptstatus; } ;
struct _adapter {TYPE_1__ securitypriv; } ;


 int EOPNOTSUPP ;




 int IW_AUTH_INDEX ;






 int Ndis802_11AuthModeOpen ;
 int Ndis802_11Encryption1Enabled ;
 int Ndis802_11EncryptionDisabled ;
 void* _NO_PRIVACY_ ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int wpa_set_auth_algs (struct net_device*,int ) ;

__attribute__((used)) static int r871x_wx_set_auth(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);
 struct iw_param *param = (struct iw_param *)&(wrqu->param);
 int paramid;
 int paramval;
 int ret = 0;

 paramid = param->flags & IW_AUTH_INDEX;
 paramval = param->value;
 switch (paramid) {
 case 128:
  break;
 case 135:
  break;
 case 136:
  break;
 case 133:



  break;
 case 130:
  if (paramval) {

   padapter->securitypriv.btkip_countermeasure = 1;
  } else {

   padapter->securitypriv.btkip_countermeasure = 0;
  }
  break;
 case 134:
  if (padapter->securitypriv.ndisencryptstatus ==
      Ndis802_11Encryption1Enabled) {





   break;
  }

  if (paramval) {
   padapter->securitypriv.ndisencryptstatus =
       Ndis802_11EncryptionDisabled;
   padapter->securitypriv.PrivacyAlgrthm =
      _NO_PRIVACY_;
   padapter->securitypriv.XGrpPrivacy =
      _NO_PRIVACY_;
   padapter->securitypriv.AuthAlgrthm = 0;
   padapter->securitypriv.ndisauthtype =
      Ndis802_11AuthModeOpen;
  }
  break;
 case 137:
  ret = wpa_set_auth_algs(dev, (u32)paramval);
  break;
 case 129:
  break;
 case 131:
  break;
 case 132:
  break;
 default:
  return -EOPNOTSUPP;
 }

 return ret;
}
