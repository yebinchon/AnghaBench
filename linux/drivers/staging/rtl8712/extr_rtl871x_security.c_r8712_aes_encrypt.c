
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xmit_priv {scalar_t__ frag_len; } ;
struct pkt_attrib {scalar_t__ encrypt; scalar_t__ nr_frags; scalar_t__ last_txcmdsz; scalar_t__ hdrlen; scalar_t__ iv_len; scalar_t__ icv_len; int * ra; struct sta_info* psta; } ;
struct xmit_frame {int * buf_addr; struct pkt_attrib attrib; } ;
struct TYPE_2__ {int * skey; } ;
struct sta_info {TYPE_1__ x_UncstKey; } ;
struct _adapter {int stapriv; struct xmit_priv xmitpriv; } ;
typedef scalar_t__ sint ;
typedef int addr_t ;


 scalar_t__ RND4 (int ) ;
 int TXDESC_OFFSET ;
 scalar_t__ _AES_ ;
 int _FAIL ;
 int _SUCCESS ;
 int aes_cipher (int *,scalar_t__,int *,scalar_t__) ;
 struct sta_info* r8712_get_stainfo (int *,int *) ;

u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe)
{

 sint curfragnum, length;
 u8 *pframe, *prwskey;
 struct sta_info *stainfo;
 struct pkt_attrib *pattrib = &((struct xmit_frame *)
           pxmitframe)->attrib;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 u32 res = _SUCCESS;

 if (((struct xmit_frame *)pxmitframe)->buf_addr == ((void*)0))
  return _FAIL;
 pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;

 if (pattrib->encrypt == _AES_) {
  if (pattrib->psta)
   stainfo = pattrib->psta;
  else
   stainfo = r8712_get_stainfo(&padapter->stapriv,
      &pattrib->ra[0]);
  if (stainfo != ((void*)0)) {
   prwskey = &stainfo->x_UncstKey.skey[0];
   for (curfragnum = 0; curfragnum < pattrib->nr_frags;
        curfragnum++) {
    if ((curfragnum + 1) == pattrib->nr_frags) {
     length = pattrib->last_txcmdsz -
       pattrib->hdrlen -
       pattrib->iv_len -
       pattrib->icv_len;
     aes_cipher(prwskey, pattrib->hdrlen,
         pframe, length);
    } else {
     length = pxmitpriv->frag_len -
       pattrib->hdrlen -
       pattrib->iv_len -
       pattrib->icv_len;
     aes_cipher(prwskey, pattrib->hdrlen,
         pframe, length);
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
