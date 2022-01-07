
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct security_priv {int ndisauthtype; int dot11AuthAlgrthm; } ;
struct adapter {struct security_priv securitypriv; } ;
typedef enum NDIS_802_11_AUTHENTICATION_MODE { ____Placeholder_NDIS_802_11_AUTHENTICATION_MODE } NDIS_802_11_AUTHENTICATION_MODE ;


 int RT_TRACE (int ,int ,char*) ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_rtl871x_ioctl_set_c_ ;
 int dot11AuthAlgrthm_8021X ;
 int rtw_set_auth (struct adapter*,struct security_priv*) ;

u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum NDIS_802_11_AUTHENTICATION_MODE authmode)
{
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 int res;
 u8 ret;

 RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("set_802_11_auth.mode(): mode =%x\n", authmode));

 psecuritypriv->ndisauthtype = authmode;

 RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("rtw_set_802_11_authentication_mode:psecuritypriv->ndisauthtype =%d", psecuritypriv->ndisauthtype));

 if (psecuritypriv->ndisauthtype > 3)
  psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;

 res = rtw_set_auth(padapter, psecuritypriv);

 if (res == _SUCCESS)
  ret = 1;
 else
  ret = 0;

 return ret;
}
