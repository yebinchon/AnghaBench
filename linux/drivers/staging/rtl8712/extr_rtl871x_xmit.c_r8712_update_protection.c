
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct xmit_priv {int vcs_setting; void* vcs; } ;
struct registry_priv {void* vcs_type; } ;
struct _adapter {struct registry_priv registrypriv; struct xmit_priv xmitpriv; } ;



 int BIT (int) ;
 void* CTS_TO_SELF ;


 void* NONE_VCS ;
 void* RTS_CTS ;
 int _ERPINFO_IE_ ;
 int* r8712_get_ie (int*,int ,int*,int) ;

void r8712_update_protection(struct _adapter *padapter, u8 *ie, uint ie_len)
{
 uint protection;
 u8 *perp;
 uint erp_len;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct registry_priv *pregistrypriv = &padapter->registrypriv;

 switch (pxmitpriv->vcs_setting) {
 case 129:
  pxmitpriv->vcs = NONE_VCS;
  break;
 case 128:
  break;
 case 130:
 default:
  perp = r8712_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
  if (perp == ((void*)0)) {
   pxmitpriv->vcs = NONE_VCS;
  } else {
   protection = (*(perp + 2)) & BIT(1);
   if (protection) {
    if (pregistrypriv->vcs_type == RTS_CTS)
     pxmitpriv->vcs = RTS_CTS;
    else
     pxmitpriv->vcs = CTS_TO_SELF;
   } else {
    pxmitpriv->vcs = NONE_VCS;
   }
  }
  break;
 }
}
