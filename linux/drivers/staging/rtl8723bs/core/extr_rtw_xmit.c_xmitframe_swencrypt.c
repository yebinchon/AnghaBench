
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {int encrypt; scalar_t__ bswenc; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int RT_TRACE (int ,int ,char*) ;

 int _SUCCESS ;



 int _drv_alert_ ;
 int _drv_notice_ ;
 int _module_rtl871x_xmit_c_ ;
 int rtw_aes_encrypt (struct adapter*,int *) ;
 int rtw_tkip_encrypt (struct adapter*,int *) ;
 int rtw_wep_encrypt (struct adapter*,int *) ;

__attribute__((used)) static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
{

 struct pkt_attrib *pattrib = &pxmitframe->attrib;



 if (pattrib->bswenc) {

  RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("### xmitframe_swencrypt\n"));
  switch (pattrib->encrypt) {
  case 128:
  case 129:
   rtw_wep_encrypt(padapter, (u8 *)pxmitframe);
   break;
  case 130:
   rtw_tkip_encrypt(padapter, (u8 *)pxmitframe);
   break;
  case 131:
   rtw_aes_encrypt(padapter, (u8 *)pxmitframe);
   break;
  default:
    break;
  }

 } else
  RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_, ("### xmitframe_hwencrypt\n"));

 return _SUCCESS;
}
