
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct security_priv {size_t PrivacyKeyIndex; int * DefKeylen; TYPE_1__* DefKey; int PrivacyAlgrthm; } ;
struct _adapter {struct security_priv securitypriv; } ;
struct NDIS_802_11_WEP {int KeyIndex; int KeyLength; int KeyMaterial; } ;
typedef size_t sint ;
struct TYPE_2__ {int skey; } ;


 int EINVAL ;
 size_t WEP_KEYS ;
 int _NO_PRIVACY_ ;
 int _WEP104_ ;
 int _WEP40_ ;
 int memcpy (int ,int *,int ) ;
 int r8712_set_key (struct _adapter*,struct security_priv*,size_t) ;

int r8712_set_802_11_add_wep(struct _adapter *padapter,
        struct NDIS_802_11_WEP *wep)
{
 sint keyid;
 struct security_priv *psecuritypriv = &padapter->securitypriv;

 keyid = wep->KeyIndex & 0x3fffffff;
 if (keyid >= WEP_KEYS)
  return -EINVAL;
 switch (wep->KeyLength) {
 case 5:
  psecuritypriv->PrivacyAlgrthm = _WEP40_;
  break;
 case 13:
  psecuritypriv->PrivacyAlgrthm = _WEP104_;
  break;
 default:
  psecuritypriv->PrivacyAlgrthm = _NO_PRIVACY_;
  break;
 }
 memcpy(psecuritypriv->DefKey[keyid].skey, &wep->KeyMaterial,
  wep->KeyLength);
 psecuritypriv->DefKeylen[keyid] = wep->KeyLength;
 psecuritypriv->PrivacyKeyIndex = keyid;
 return r8712_set_key(padapter, psecuritypriv, keyid);
}
