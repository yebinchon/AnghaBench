
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rx_pkt_attrib {scalar_t__ encrypt; int hdrlen; int iv_len; int ra; int * ta; } ;
struct TYPE_7__ {int len; scalar_t__ rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_8__ {TYPE_3__ hdr; } ;
union recv_frame {TYPE_4__ u; } ;
typedef int u8 ;
struct TYPE_6__ {int* skey; } ;
struct sta_info {TYPE_2__ x_UncstKey; } ;
struct security_priv {int binstallGrpkey; TYPE_1__* XGrpKey; } ;
struct _adapter {int stapriv; struct security_priv securitypriv; } ;
typedef int sint ;
struct TYPE_5__ {int* skey; } ;


 scalar_t__ _AES_ ;
 int aes_decipher (int*,int,int*,int) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 struct sta_info* r8712_get_stainfo (int *,int *) ;

void r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
{

 sint length;
 u8 *pframe, *prwskey, *iv, idx;
 struct sta_info *stainfo;
 struct rx_pkt_attrib *prxattrib = &((union recv_frame *)
        precvframe)->u.hdr.attrib;
 struct security_priv *psecuritypriv = &padapter->securitypriv;

 pframe = (unsigned char *)((union recv_frame *)precvframe)->
   u.hdr.rx_data;

 if (prxattrib->encrypt == _AES_) {
  stainfo = r8712_get_stainfo(&padapter->stapriv,
         &prxattrib->ta[0]);
  if (stainfo != ((void*)0)) {
   if (is_multicast_ether_addr(prxattrib->ra)) {
    iv = pframe + prxattrib->hdrlen;
    idx = iv[3];
    prwskey = &psecuritypriv->XGrpKey[
       ((idx >> 6) & 0x3) - 1].skey[0];
    if (!psecuritypriv->binstallGrpkey)
     return;

   } else {
    prwskey = &stainfo->x_UncstKey.skey[0];
   }
   length = ((union recv_frame *)precvframe)->
     u.hdr.len - prxattrib->hdrlen -
     prxattrib->iv_len;
   aes_decipher(prwskey, prxattrib->hdrlen, pframe,
         length);
  }
 }
}
