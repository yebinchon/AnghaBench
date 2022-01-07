
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xmit_priv {int frag_len; int vcs_type; int vcs; int vcs_setting; } ;
struct security_priv {int dot118021XGrpKeyid; int ndisencryptstatus; int ndisauthtype; void* dot118021XGrpPrivacy; scalar_t__ dot11PrivacyKeyIndex; void* dot11PrivacyAlgrthm; int dot11AuthAlgrthm; int binstallGrpkey; } ;
struct registry_priv {int frag_thresh; int vcs_type; int vrtl_carrier_sense; } ;
struct TYPE_2__ {int ampdu_enable; } ;
struct mlme_priv {TYPE_1__ htpriv; int scan_mode; int scan_interval; } ;
struct adapter {int bReadPortCancel; int bWritePortCancel; struct security_priv securitypriv; struct mlme_priv mlmepriv; struct xmit_priv xmitpriv; struct registry_priv registrypriv; } ;


 int Ndis802_11AuthModeOpen ;
 int Ndis802_11WEPDisabled ;
 int SCAN_ACTIVE ;
 int SCAN_INTERVAL ;
 int _FAIL ;
 void* _NO_PRIVACY_ ;
 int _SUCCESS ;
 int dot11AuthAlgrthm_Open ;
 int rtw_hal_def_value_init (struct adapter*) ;
 int rtw_init_registrypriv_dev_network (struct adapter*) ;
 int rtw_update_registrypriv_dev_network (struct adapter*) ;

__attribute__((used)) static u8 rtw_init_default_value(struct adapter *padapter)
{
 struct registry_priv *pregistrypriv = &padapter->registrypriv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;


 pxmitpriv->vcs_setting = pregistrypriv->vrtl_carrier_sense;
 pxmitpriv->vcs = pregistrypriv->vcs_type;
 pxmitpriv->vcs_type = pregistrypriv->vcs_type;
 pxmitpriv->frag_len = pregistrypriv->frag_thresh;


 pmlmepriv->scan_interval = SCAN_INTERVAL;
 pmlmepriv->scan_mode = SCAN_ACTIVE;


 pmlmepriv->htpriv.ampdu_enable = 0;


 psecuritypriv->binstallGrpkey = _FAIL;
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


 padapter->bReadPortCancel = 0;
 padapter->bWritePortCancel = 0;
 return _SUCCESS;
}
