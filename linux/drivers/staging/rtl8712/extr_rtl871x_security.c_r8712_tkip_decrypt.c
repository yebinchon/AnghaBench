
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rx_pkt_attrib {scalar_t__ encrypt; int hdrlen; int iv_len; int * ta; int ra; } ;
struct TYPE_5__ {int len; scalar_t__ rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
union pn48 {int val; } ;
typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_8__ {int* skey; } ;
struct sta_info {TYPE_4__ x_UncstKey; } ;
struct security_priv {int binstallGrpkey; TYPE_3__* XGrpKey; } ;
struct arc4context {int dummy; } ;
struct _adapter {int stapriv; struct security_priv securitypriv; } ;
typedef int __le32 ;
struct TYPE_7__ {int* skey; } ;


 int GET_TKIP_PN (int*,union pn48) ;
 scalar_t__ _TKIP_ ;
 int arcfour_encrypt (struct arc4context*,int*,int*,int) ;
 int arcfour_init (struct arc4context*,int*,int) ;
 int cpu_to_le32 (int ) ;
 int getcrc32 (int*,int) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int phase1 (scalar_t__*,int*,int *,int) ;
 int phase2 (int*,int*,unsigned short*,scalar_t__) ;
 struct sta_info* r8712_get_stainfo (int *,int *) ;

void r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
{
 u16 pnl;
 u32 pnh;
 u8 rc4key[16];
 u8 ttkey[16];
 u8 crc[4];
 struct arc4context mycontext;
 u32 length;
 u8 *pframe, *payload, *iv, *prwskey, idx = 0;
 union pn48 txpn;
 struct sta_info *stainfo;
 struct rx_pkt_attrib *prxattrib = &((union recv_frame *)
        precvframe)->u.hdr.attrib;
 struct security_priv *psecuritypriv = &padapter->securitypriv;

 pframe = (unsigned char *)((union recv_frame *)
       precvframe)->u.hdr.rx_data;

 if (prxattrib->encrypt == _TKIP_) {
  stainfo = r8712_get_stainfo(&padapter->stapriv,
         &prxattrib->ta[0]);
  if (stainfo != ((void*)0)) {
   iv = pframe + prxattrib->hdrlen;
   payload = pframe + prxattrib->iv_len +
      prxattrib->hdrlen;
   length = ((union recv_frame *)precvframe)->
     u.hdr.len - prxattrib->hdrlen -
     prxattrib->iv_len;
   if (is_multicast_ether_addr(prxattrib->ra)) {
    idx = iv[3];
    prwskey = &psecuritypriv->XGrpKey[
      ((idx >> 6) & 0x3) - 1].skey[0];
    if (!psecuritypriv->binstallGrpkey)
     return;
   } else {
    prwskey = &stainfo->x_UncstKey.skey[0];
   }
   GET_TKIP_PN(iv, txpn);
   pnl = (u16)(txpn.val);
   pnh = (u32)(txpn.val >> 16);
   phase1((u16 *)&ttkey[0], prwskey, &prxattrib->ta[0],
    pnh);
   phase2(&rc4key[0], prwskey, (unsigned short *)
          &ttkey[0], pnl);

   arcfour_init(&mycontext, rc4key, 16);
   arcfour_encrypt(&mycontext, payload, payload, length);
   *((__le32 *)crc) = cpu_to_le32(getcrc32(payload,
     length - 4));
  }
 }
}
