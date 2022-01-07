
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct security_priv {int dot11PrivacyKeyIndex; int dot118021XGrpKeyid; int hw_decrypted; int busetkipkey; } ;
struct rx_pkt_attrib {int bdecrypted; int encrypt; int hdrlen; int key_index; } ;
struct recv_frame {TYPE_1__* pkt; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {int free_recv_queue; } ;
struct adapter {TYPE_2__ recvpriv; struct security_priv securitypriv; } ;
struct TYPE_3__ {int* data; } ;


 int DBG_88E (char*,int) ;
 int RT_TRACE (int ,int ,char*) ;
 int WEP_KEYS ;

 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;



 int _drv_info_ ;
 int _module_rtl871x_recv_c_ ;
 scalar_t__ rtw_aes_decrypt (struct adapter*,int*) ;
 int rtw_free_recvframe (struct recv_frame*,int *) ;
 scalar_t__ rtw_tkip_decrypt (struct adapter*,int*) ;
 scalar_t__ rtw_wep_decrypt (struct adapter*,int*) ;

__attribute__((used)) static struct recv_frame *decryptor(struct adapter *padapter,
        struct recv_frame *precv_frame)
{
 struct rx_pkt_attrib *prxattrib = &precv_frame->attrib;
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 struct recv_frame *return_packet = precv_frame;
 u32 res = _SUCCESS;

 RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("prxstat->decrypted=%x prxattrib->encrypt=0x%03x\n", prxattrib->bdecrypted, prxattrib->encrypt));

 if (prxattrib->encrypt > 0) {
  u8 *iv = precv_frame->pkt->data + prxattrib->hdrlen;

  prxattrib->key_index = (((iv[3]) >> 6) & 0x3);

  if (prxattrib->key_index > WEP_KEYS) {
   DBG_88E("prxattrib->key_index(%d)>WEP_KEYS\n", prxattrib->key_index);

   switch (prxattrib->encrypt) {
   case 128:
   case 129:
    prxattrib->key_index = psecuritypriv->dot11PrivacyKeyIndex;
    break;
   case 130:
   case 131:
   default:
    prxattrib->key_index = psecuritypriv->dot118021XGrpKeyid;
    break;
   }
  }
 }

 if ((prxattrib->encrypt > 0) && (prxattrib->bdecrypted == 0)) {
  psecuritypriv->hw_decrypted = 0;

  switch (prxattrib->encrypt) {
  case 128:
  case 129:
   res = rtw_wep_decrypt(padapter, (u8 *)precv_frame);
   break;
  case 130:
   res = rtw_tkip_decrypt(padapter, (u8 *)precv_frame);
   break;
  case 131:
   res = rtw_aes_decrypt(padapter, (u8 *)precv_frame);
   break;
  default:
   break;
  }
 } else if (prxattrib->bdecrypted == 1 && prxattrib->encrypt > 0 &&
     (psecuritypriv->busetkipkey == 1 || prxattrib->encrypt != 130))
   psecuritypriv->hw_decrypted = 1;

 if (res == _FAIL) {
  rtw_free_recvframe(return_packet, &padapter->recvpriv.free_recv_queue);
  return_packet = ((void*)0);
 }

 return return_packet;
}
