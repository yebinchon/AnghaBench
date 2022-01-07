
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union pn48 {int val; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct xmit_priv {scalar_t__ frag_len; } ;
struct pkt_attrib {scalar_t__ encrypt; scalar_t__ nr_frags; int hdrlen; int iv_len; scalar_t__ last_txcmdsz; scalar_t__ icv_len; int * ta; int * ra; struct sta_info* psta; } ;
struct xmit_frame {int * buf_addr; struct pkt_attrib attrib; } ;
struct TYPE_2__ {int * skey; } ;
struct sta_info {TYPE_1__ x_UncstKey; } ;
struct arc4context {int dummy; } ;
struct _adapter {int stapriv; struct xmit_priv xmitpriv; } ;
typedef int addr_t ;
typedef int __le32 ;


 int GET_TKIP_PN (int *,union pn48) ;
 scalar_t__ RND4 (int ) ;
 int TXDESC_OFFSET ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 scalar_t__ _TKIP_ ;
 int arcfour_encrypt (struct arc4context*,int *,int *,int) ;
 int arcfour_init (struct arc4context*,int *,int) ;
 int cpu_to_le32 (int ) ;
 int getcrc32 (int *,scalar_t__) ;
 int phase1 (scalar_t__*,int *,int *,scalar_t__) ;
 int phase2 (int *,int *,scalar_t__*,scalar_t__) ;
 struct sta_info* r8712_get_stainfo (int *,int *) ;

u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
{
 u16 pnl;
 u32 pnh;
 u8 rc4key[16];
 u8 ttkey[16];
 u8 crc[4];
 struct arc4context mycontext;
 u32 curfragnum, length;

 u8 *pframe, *payload, *iv, *prwskey;
 union pn48 txpn;
 struct sta_info *stainfo;
 struct pkt_attrib *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 u32 res = _SUCCESS;

 if (((struct xmit_frame *)pxmitframe)->buf_addr == ((void*)0))
  return _FAIL;

 pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;

 if (pattrib->encrypt == _TKIP_) {
  if (pattrib->psta)
   stainfo = pattrib->psta;
  else
   stainfo = r8712_get_stainfo(&padapter->stapriv,
      &pattrib->ra[0]);
  if (stainfo != ((void*)0)) {
   prwskey = &stainfo->x_UncstKey.skey[0];
   for (curfragnum = 0; curfragnum < pattrib->nr_frags;
        curfragnum++) {
    iv = pframe + pattrib->hdrlen;
    payload = pframe + pattrib->iv_len +
       pattrib->hdrlen;
    GET_TKIP_PN(iv, txpn);
    pnl = (u16)(txpn.val);
    pnh = (u32)(txpn.val >> 16);
    phase1((u16 *)&ttkey[0], prwskey,
           &pattrib->ta[0], pnh);
    phase2(&rc4key[0], prwskey, (u16 *)&ttkey[0],
           pnl);
    if ((curfragnum + 1) == pattrib->nr_frags) {

     length = pattrib->last_txcmdsz -
          pattrib->hdrlen -
          pattrib->iv_len -
          pattrib->icv_len;
     *((__le32 *)crc) = cpu_to_le32(
      getcrc32(payload, length));
     arcfour_init(&mycontext, rc4key, 16);
     arcfour_encrypt(&mycontext, payload,
       payload, length);
     arcfour_encrypt(&mycontext, payload +
       length, crc, 4);
    } else {
     length = pxmitpriv->frag_len -
       pattrib->hdrlen -
       pattrib->iv_len -
       pattrib->icv_len;
     *((__le32 *)crc) = cpu_to_le32(getcrc32(
       payload, length));
     arcfour_init(&mycontext, rc4key, 16);
     arcfour_encrypt(&mycontext, payload,
        payload, length);
     arcfour_encrypt(&mycontext,
       payload + length, crc,
       4);
     pframe += pxmitpriv->frag_len;
     pframe = (u8 *)RND4((addr_t)(pframe));
    }
   }
  } else {
   res = _FAIL;
  }
 }
 return res;
}
