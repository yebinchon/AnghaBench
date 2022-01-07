
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int AuthAlgrthm; int ndisencryptstatus; int ndisauthtype; } ;
struct _adapter {TYPE_1__ securitypriv; } ;


 int EOPNOTSUPP ;







 int Ndis802_11AuthModeWPA2PSK ;
 int Ndis802_11AuthModeWPAPSK ;
 int Ndis802_11Encryption2Enabled ;
 int Ndis802_11Encryption3Enabled ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int wpa_set_auth_algs (struct net_device*,int ) ;

__attribute__((used)) static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
{
 struct _adapter *padapter = netdev_priv(dev);

 switch (name) {
 case 128:
  padapter->securitypriv.AuthAlgrthm = 2;
  switch ((value) & 0xff) {
  case 1:
   padapter->securitypriv.ndisauthtype =
    Ndis802_11AuthModeWPAPSK;
   padapter->securitypriv.ndisencryptstatus =
    Ndis802_11Encryption2Enabled;
   break;
  case 2:
   padapter->securitypriv.ndisauthtype =
    Ndis802_11AuthModeWPA2PSK;
   padapter->securitypriv.ndisencryptstatus =
    Ndis802_11Encryption3Enabled;
   break;
  }
  break;
 case 130:
  break;
 case 133:
  break;
 case 131:
  break;
 case 134:
  return wpa_set_auth_algs(dev, value);
 case 132:
  break;
 case 129:

  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
