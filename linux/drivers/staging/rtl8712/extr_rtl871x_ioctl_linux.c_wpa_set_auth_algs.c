
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ndisauthtype; int AuthAlgrthm; void* ndisencryptstatus; } ;
struct _adapter {TYPE_1__ securitypriv; } ;


 int AUTH_ALG_OPEN_SYSTEM ;
 int AUTH_ALG_SHARED_KEY ;
 int EINVAL ;
 scalar_t__ Ndis802_11AuthModeAutoSwitch ;
 scalar_t__ Ndis802_11AuthModeOpen ;
 scalar_t__ Ndis802_11AuthModeShared ;
 scalar_t__ Ndis802_11AuthModeWPAPSK ;
 void* Ndis802_11Encryption1Enabled ;
 struct _adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int wpa_set_auth_algs(struct net_device *dev, u32 value)
{
 struct _adapter *padapter = netdev_priv(dev);
 int ret = 0;

 if ((value & AUTH_ALG_SHARED_KEY) && (value & AUTH_ALG_OPEN_SYSTEM)) {
  padapter->securitypriv.ndisencryptstatus =
       Ndis802_11Encryption1Enabled;
  padapter->securitypriv.ndisauthtype =
       Ndis802_11AuthModeAutoSwitch;
  padapter->securitypriv.AuthAlgrthm = 3;
 } else if (value & AUTH_ALG_SHARED_KEY) {
  padapter->securitypriv.ndisencryptstatus =
       Ndis802_11Encryption1Enabled;
  padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeShared;
  padapter->securitypriv.AuthAlgrthm = 1;
 } else if (value & AUTH_ALG_OPEN_SYSTEM) {
  if (padapter->securitypriv.ndisauthtype <
       Ndis802_11AuthModeWPAPSK) {
   padapter->securitypriv.ndisauthtype =
       Ndis802_11AuthModeOpen;
   padapter->securitypriv.AuthAlgrthm = 0;
  }
 } else {
  ret = -EINVAL;
 }
 return ret;
}
