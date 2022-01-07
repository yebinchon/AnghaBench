
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Privacy; } ;
struct wlan_network {TYPE_1__ network; } ;
struct security_priv {scalar_t__ dot11PrivacyAlgrthm; } ;
struct adapter {struct security_priv securitypriv; } ;


 scalar_t__ _NO_PRIVACY_ ;

int rtw_is_same_ibss(struct adapter *adapter, struct wlan_network *pnetwork)
{
 int ret = 1;
 struct security_priv *psecuritypriv = &adapter->securitypriv;

 if ((psecuritypriv->dot11PrivacyAlgrthm != _NO_PRIVACY_) &&
      (pnetwork->network.Privacy == 0))
  ret = 0;
 else if ((psecuritypriv->dot11PrivacyAlgrthm == _NO_PRIVACY_) &&
   (pnetwork->network.Privacy == 1))
  ret = 0;
 else
  ret = 1;

 return ret;

}
