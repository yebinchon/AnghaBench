
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xmit_priv {int frag_len; int vcs_type; int vcs; int vcs_setting; } ;
struct security_priv {int dot118021XGrpKeyid; int ndisencryptstatus; int ndisauthtype; void* dot118021XGrpPrivacy; scalar_t__ dot11PrivacyKeyIndex; void* dot11PrivacyAlgrthm; int dot11AuthAlgrthm; int sw_decrypt; int sw_encrypt; void* binstallKCK_KEK; void* binstallGrpkey; } ;
struct registry_priv {int software_decrypt; int software_encrypt; int frag_thresh; int vcs_type; int vrtl_carrier_sense; } ;
struct TYPE_2__ {int ampdu_enable; } ;
struct mlme_priv {TYPE_1__ htpriv; int scan_mode; } ;
struct adapter {int fix_rate; int driver_ampdu_spacing; int driver_rx_ampdu_factor; scalar_t__ bNotifyChannelChange; scalar_t__ bLinkInfoDump; struct security_priv securitypriv; struct mlme_priv mlmepriv; struct xmit_priv xmitpriv; struct registry_priv registrypriv; } ;


 int DF_RX_BIT ;
 int DF_TX_BIT ;
 int Ndis802_11AuthModeOpen ;
 int Ndis802_11WEPDisabled ;
 int RTW_ENABLE_FUNC (struct adapter*,int ) ;
 int SCAN_ACTIVE ;
 void* _FAIL ;
 void* _NO_PRIVACY_ ;
 int dot11AuthAlgrthm_Open ;
 int rtw_hal_def_value_init (struct adapter*) ;
 int rtw_init_registrypriv_dev_network (struct adapter*) ;
 int rtw_update_registrypriv_dev_network (struct adapter*) ;

__attribute__((used)) static void rtw_init_default_value(struct adapter *padapter)
{
 struct registry_priv *pregistrypriv = &padapter->registrypriv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;


 pxmitpriv->vcs_setting = pregistrypriv->vrtl_carrier_sense;
 pxmitpriv->vcs = pregistrypriv->vcs_type;
 pxmitpriv->vcs_type = pregistrypriv->vcs_type;

 pxmitpriv->frag_len = pregistrypriv->frag_thresh;




 pmlmepriv->scan_mode = SCAN_ACTIVE;





 pmlmepriv->htpriv.ampdu_enable = 0;



 psecuritypriv->binstallGrpkey = _FAIL;



 psecuritypriv->sw_encrypt = pregistrypriv->software_encrypt;
 psecuritypriv->sw_decrypt = pregistrypriv->software_decrypt;

 psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
 psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_;

 psecuritypriv->dot11PrivacyKeyIndex = 0;

 psecuritypriv->dot118021XGrpPrivacy = _NO_PRIVACY_;
 psecuritypriv->dot118021XGrpKeyid = 1;

 psecuritypriv->ndisauthtype = Ndis802_11AuthModeOpen;
 psecuritypriv->ndisencryptstatus = Ndis802_11WEPDisabled;


 rtw_init_registrypriv_dev_network(padapter);
 rtw_update_registrypriv_dev_network(padapter);


 rtw_hal_def_value_init(padapter);


 RTW_ENABLE_FUNC(padapter, DF_RX_BIT);
 RTW_ENABLE_FUNC(padapter, DF_TX_BIT);
 padapter->bLinkInfoDump = 0;
 padapter->bNotifyChannelChange = 0;


 padapter->fix_rate = 0xFF;
 padapter->driver_ampdu_spacing = 0xFF;
 padapter->driver_rx_ampdu_factor = 0xFF;

}
