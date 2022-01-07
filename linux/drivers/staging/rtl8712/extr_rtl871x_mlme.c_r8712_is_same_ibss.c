
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Privacy; } ;
struct wlan_network {TYPE_1__ network; } ;
struct security_priv {scalar_t__ PrivacyAlgrthm; } ;
struct _adapter {struct security_priv securitypriv; } ;


 scalar_t__ _NO_PRIVACY_ ;
 scalar_t__ cpu_to_le32 (int) ;

int r8712_is_same_ibss(struct _adapter *adapter, struct wlan_network *pnetwork)
{
 int ret = 1;
 struct security_priv *psecuritypriv = &adapter->securitypriv;

 if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
      (pnetwork->network.Privacy == cpu_to_le32(0)))
  ret = 0;
 else if ((psecuritypriv->PrivacyAlgrthm == _NO_PRIVACY_) &&
   (pnetwork->network.Privacy == cpu_to_le32(1)))
  ret = 0;
 else
  ret = 1;
 return ret;

}
