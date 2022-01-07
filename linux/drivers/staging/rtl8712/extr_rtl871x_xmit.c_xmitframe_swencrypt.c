
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {int encrypt; scalar_t__ bswenc; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;
struct _adapter {int dummy; } ;
typedef int sint ;



 int _SUCCESS ;



 int r8712_aes_encrypt (struct _adapter*,int *) ;
 int r8712_tkip_encrypt (struct _adapter*,int *) ;
 int r8712_wep_encrypt (struct _adapter*,int *) ;

__attribute__((used)) static sint xmitframe_swencrypt(struct _adapter *padapter,
    struct xmit_frame *pxmitframe)
{
 struct pkt_attrib *pattrib = &pxmitframe->attrib;

 if (pattrib->bswenc) {
  switch (pattrib->encrypt) {
  case 128:
  case 129:
   r8712_wep_encrypt(padapter, (u8 *)pxmitframe);
   break;
  case 130:
   r8712_tkip_encrypt(padapter, (u8 *)pxmitframe);
   break;
  case 131:
   r8712_aes_encrypt(padapter, (u8 *)pxmitframe);
   break;
  default:
    break;
  }
 }
 return _SUCCESS;
}
