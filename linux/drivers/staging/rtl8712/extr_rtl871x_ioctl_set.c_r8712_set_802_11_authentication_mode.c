
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct security_priv {int ndisauthtype; int AuthAlgrthm; } ;
struct _adapter {struct security_priv securitypriv; } ;
typedef enum NDIS_802_11_AUTHENTICATION_MODE { ____Placeholder_NDIS_802_11_AUTHENTICATION_MODE } NDIS_802_11_AUTHENTICATION_MODE ;


 scalar_t__ r8712_set_auth (struct _adapter*,struct security_priv*) ;

u8 r8712_set_802_11_authentication_mode(struct _adapter *padapter,
    enum NDIS_802_11_AUTHENTICATION_MODE authmode)
{
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 u8 ret;

 psecuritypriv->ndisauthtype = authmode;
 if (psecuritypriv->ndisauthtype > 3)
  psecuritypriv->AuthAlgrthm = 2;
 if (r8712_set_auth(padapter, psecuritypriv))
  ret = 0;
 else
  ret = 1;
 return ret;
}
