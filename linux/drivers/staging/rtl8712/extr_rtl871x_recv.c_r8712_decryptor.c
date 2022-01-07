
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int encrypt; int bdecrypted; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int u8 ;
struct security_priv {int hw_decrypted; scalar_t__ sw_decrypt; } ;
struct _adapter {struct security_priv securitypriv; } ;






 int r8712_aes_decrypt (struct _adapter*,int *) ;
 int r8712_tkip_decrypt (struct _adapter*,int *) ;
 int r8712_wep_decrypt (struct _adapter*,int *) ;

union recv_frame *r8712_decryptor(struct _adapter *padapter,
       union recv_frame *precv_frame)
{
 struct rx_pkt_attrib *prxattrib = &precv_frame->u.hdr.attrib;
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 union recv_frame *return_packet = precv_frame;

 if ((prxattrib->encrypt > 0) && ((prxattrib->bdecrypted == 0) ||
     psecuritypriv->sw_decrypt)) {
  psecuritypriv->hw_decrypted = 0;
  switch (prxattrib->encrypt) {
  case 128:
  case 129:
   r8712_wep_decrypt(padapter, (u8 *)precv_frame);
   break;
  case 130:
   r8712_tkip_decrypt(padapter, (u8 *)precv_frame);
   break;
  case 131:
   r8712_aes_decrypt(padapter, (u8 *)precv_frame);
   break;
  default:
    break;
  }
 } else if (prxattrib->bdecrypted == 1) {
  psecuritypriv->hw_decrypted = 1;
 }
 return return_packet;
}
