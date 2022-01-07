
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
struct TYPE_5__ {scalar_t__ Privacy; scalar_t__ InfrastructureMode; int IELength; int IEs; } ;
struct wlan_network {TYPE_1__ network; } ;
struct security_priv {scalar_t__ PrivacyAlgrthm; scalar_t__ wps_phase; } ;
struct TYPE_6__ {scalar_t__ InfrastructureMode; } ;
struct TYPE_7__ {TYPE_2__ network; } ;
struct TYPE_8__ {TYPE_3__ cur_network; } ;
struct _adapter {TYPE_4__ mlmepriv; struct security_priv securitypriv; } ;


 int WIFI_ADHOC_STATE ;
 scalar_t__ _NO_PRIVACY_ ;
 scalar_t__ check_fwstate (TYPE_4__*,int ) ;
 scalar_t__ r8712_get_wps_ie (int ,int ,int *,int *) ;

__attribute__((used)) static int is_desired_network(struct _adapter *adapter,
    struct wlan_network *pnetwork)
{
 u8 wps_ie[512];
 uint wps_ielen;
 int bselected = 1;
 struct security_priv *psecuritypriv = &adapter->securitypriv;

 if (psecuritypriv->wps_phase) {
  if (r8712_get_wps_ie(pnetwork->network.IEs,
      pnetwork->network.IELength, wps_ie,
      &wps_ielen))
   return 1;
  return 0;
 }
 if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
      (pnetwork->network.Privacy == 0))
  bselected = 0;
 if (check_fwstate(&adapter->mlmepriv, WIFI_ADHOC_STATE)) {
  if (pnetwork->network.InfrastructureMode !=
   adapter->mlmepriv.cur_network.network.
   InfrastructureMode)
   bselected = 0;
 }
 return bselected;
}
